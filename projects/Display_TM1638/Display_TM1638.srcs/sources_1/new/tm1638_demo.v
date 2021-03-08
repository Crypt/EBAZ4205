module tm1638_demo(
    input clk,
//    [8:0] digits [8:0];
    input  [7:0] larson,
    input  [7:0] dots,
    output reg  [7:0] keys,
    output reg tm_cs,
    output tm_clk,
    output reg tm_rw,
    inout  tm_dio
    );

    localparam 
        HIGH    = 1'b1,
        LOW     = 1'b0;

    localparam [6:0]
        S_1     = 7'b0000110,
        S_2     = 7'b1011011,
        S_3     = 7'b1001111,
        S_4     = 7'b1100110,
        S_5     = 7'b1101101,
        S_6     = 7'b1111101,
        S_7     = 7'b0000111,
        S_8     = 7'b1111111,
        S_BLK   = 7'b0000000;

    localparam [7:0]
        C_READ  = 8'b01000010,
        C_WRITE = 8'b01000000,
        C_DISP  = 8'b10001111,
        C_ADDR  = 8'b11000000;

    localparam CLK_DIV = 22; //19; // speed of scanner

    reg [6:0] segdefs [16:0];   // segment definitions, index by digit value    
    reg [8:0] digits [8:0];

    reg rst = HIGH;

    reg [5:0] instruction_step;
    //reg [7:0] keys;

    //reg [7:0] larson;
    reg larson_dir;
    reg [CLK_DIV:0] counter;

    // set up tristate IO pin for display
    //   tm_dio     is physical pin
    //   dio_in     for reading from display
    //   dio_out    for sending to display
    //   tm_rw      selects input or output

    wire tm_rw_;    // now exposed as output to outside
    wire dio_in, dio_out;


initial begin

// name          bit#
// - a -        - 0 -
// f   b        5   1
// - g -        - 6 -
// e   c        4   2
// - d -        - 3 -

segdefs[0] = 7'b0111111; // 0
segdefs[1] = 7'b0000110; // 1
segdefs[2] = 7'b1011011; // 2
segdefs[3] = 7'b1001111; // 3
segdefs[4] = 7'b1100110; // 4
segdefs[5] = 7'b1101101; // 5
segdefs[6] = 7'b1111101; // 6
segdefs[7] = 7'b0000111; // 7
segdefs[8] = 7'b1111111; // 8
segdefs[9] = 7'b1100111; // 9
segdefs[10]= 7'b1110111; // A
segdefs[11]= 7'b1111100; // b
segdefs[12]= 7'b0111001; // C
segdefs[13]= 7'b1011110; // d
segdefs[14]= 7'b1111001; // E
segdefs[15]= 7'b1110001; // F
segdefs[16]= 7'b0000000; // blank
segdefs[17]= 7'b1000000; // -

// digit values for each display, values from table above
// used by main loop below
digits[0] = 16;  // LHS
digits[1] = 17;
digits[2] = 10;
digits[3] = 11;
digits[4] = 12;
digits[5] = 13;
digits[6] = 14;
digits[7] = 15;  // RHS

end


   
IOBUF #(
    .DRIVE(12), // Specify the output drive strength
    .IBUF_LOW_PWR("TRUE"), // Low Power - "TRUE", High Performance = "FALSE"
    .IOSTANDARD("LVCMOS33"), // Specify the I/O standard
    .SLEW("SLOW") // Specify the output slew rate
    ) sig_IOBUF (
    .I(dio_out),
    .IO(tm_dio), 
    .O(dio_in),
    .T(tm_rw_) 
 ); 

    // setup tm1638 module with it's tristate IO
    //   tm_in      is read from module
    //   tm_out     is written to module
    //   tm_latch   triggers the module to read/write display
    //   tm_rw      selects read or write mode to display
    //   busy       indicates when module is busy
    //                (another latch will interrupt)
    //   tm_clk     is the data clk
    //   dio_in     for reading from display
    //   dio_out    for sending to display
    //
    //   tm_data    the tristate io pin to module
    reg tm_latch;
    wire busy;
    wire [7:0] tm_data, tm_in;
    reg [7:0] tm_out;

    assign tm_rw_ = ~tm_rw; // write is 0
    assign tm_in = tm_data;
    assign tm_data = tm_rw ? tm_out : 8'hZZ;

    tm1638 u_tm1638 (
        .clk(clk),
        .rst(rst),
        .data_latch(tm_latch),
        .data(tm_data),
        .rw(tm_rw),
        .busy(busy),
        .sclk(tm_clk),
        .dio_in(dio_in),
        .dio_out(dio_out)
    );

    // handles displaying 1-8 on a display location
    // and animating the decimal point
    task display_digit;
        input [2:0] key;
        input [6:0] segs;

        begin
            tm_latch <= HIGH;

            if (dots[key])
//                tm_out <= {1'b1, S_BLK[6:0]}; // decimal on
                tm_out <= {1'b1, segs}; // decimal on
            else
                tm_out <= {1'b0, segs}; // decimal off
        end
    endtask

    // handles animating the LEDs 1-8
    task display_led;
        input [2:0] dot; // three bits 0-7 dot position

        begin
            tm_latch <= HIGH;
            tm_out <= {7'b0, larson[dot]}; // 
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            instruction_step <= 6'b0;
            tm_cs <= HIGH;
            tm_rw <= HIGH;
            rst <= LOW;

            counter <= 0;
            keys <= 8'b0;   // button bits
            larson_dir <= 0; // starting animation direction
//            larson <= 8'b00010000; // starting dot bit

        end else begin
//            if (&counter) begin
//                larson_dir <= larson[6] ? 0 : larson[1] ? 1 : larson_dir;
//
//                if (larson_dir)
//                    larson <= {larson[6:0], larson[7]}; // rotate bits 
//                else
//                    larson <= {larson[0], larson[7:1]}; // rotate bits
//            end
//            larson <= keys;
            
            if (counter[0] && ~busy) begin
                case (instruction_step)
                    // *** KEYS ***
                    1:  {tm_cs, tm_rw}     <= {LOW, HIGH};
                    2:  {tm_latch, tm_out} <= {HIGH, C_READ}; // read mode
                    3:  {tm_latch, tm_rw}  <= {HIGH, LOW};
/*
                    //  read back keys S1 - S8
                    4:  {keys[0], keys[4]} <= {tm_in[0], tm_in[4]};
                    5:  {tm_latch}         <= {HIGH};
                    6:  {keys[1], keys[5]} <= {tm_in[0], tm_in[4]};
                    7:  {tm_latch}         <= {HIGH};
                    8:  {keys[2], keys[6]} <= {tm_in[0], tm_in[4]};
                    9:  {tm_latch}         <= {HIGH};
                    10: {keys[3], keys[7]} <= {tm_in[0], tm_in[4]};
                    11: {tm_cs}            <= {HIGH};
*/                    
                    4:  {keys[7], keys[3]} <= {tm_in[0], tm_in[4]};
                    5:  {tm_latch}         <= {HIGH};
                    6:  {keys[6], keys[2]} <= {tm_in[0], tm_in[4]};
                    7:  {tm_latch}         <= {HIGH};
                    8:  {keys[5], keys[1]} <= {tm_in[0], tm_in[4]};
                    9:  {tm_latch}         <= {HIGH};
                    10: {keys[4], keys[0]} <= {tm_in[0], tm_in[4]};
                    11: {tm_cs}            <= {HIGH};

                    // *** DISPLAY ***
                    12: {tm_cs, tm_rw}     <= {LOW, HIGH};
                    13: {tm_latch, tm_out} <= {HIGH, C_WRITE}; // write mode
                    14: {tm_cs}            <= {HIGH};

                    15: {tm_cs, tm_rw}     <= {LOW, HIGH};
                    16: {tm_latch, tm_out} <= {HIGH, C_ADDR}; // set addr 0 pos

/*
                    17: display_digit(3'd7, S_1); // Digit 1
                    18: display_led(3'd0);        // LED 1

                    19: display_digit(3'd6, S_2); // Digit 2
                    20: display_led(3'd1);        // LED 2

                    21: display_digit(3'd5, S_3); // Digit 3
                    22: display_led(3'd2);        // LED 3

                    23: display_digit(3'd4, S_4); // Digit 4
                    24: display_led(3'd3);        // LED 4

                    25: display_digit(3'd3, S_5); // Digit 5
                    26: display_led(3'd4);        // LED 5

                    27: display_digit(3'd2, S_6); // Digit 6
                    28: display_led(3'd5);        // LED 6

                    29: display_digit(3'd1, S_7); // Digit 7
                    30: display_led(3'd6);        // LED 7

                    31: display_digit(3'd0, S_8); // Digit 8
                    32: display_led(3'd7);        // LED 8

*/
                    17: display_digit(3'd7, segdefs[digits[0]]); // Digit 1
                    18: display_led(3'd7);        // LED 1

                    19: display_digit(3'd6, segdefs[digits[1]]); // Digit 2
                    20: display_led(3'd6);        // LED 2

                    21: display_digit(3'd5, segdefs[digits[2]]); // Digit 3
                    22: display_led(3'd5);        // LED 3

                    23: display_digit(3'd4, segdefs[digits[3]]); // Digit 4
                    24: display_led(3'd4);        // LED 4

                    25: display_digit(3'd3, segdefs[digits[4]]); // Digit 5
                    26: display_led(3'd3);        // LED 5

                    27: display_digit(3'd2, segdefs[digits[5]]); // Digit 6
                    28: display_led(3'd2);        // LED 6

                    29: display_digit(3'd1, segdefs[digits[6]]); // Digit 7
                    30: display_led(3'd1);        // LED 7

                    31: display_digit(3'd0, segdefs[digits[7]]); // Digit 8
                    32: display_led(3'd0);        // LED 8

                    33: {tm_cs}            <= {HIGH};

                    34: {tm_cs, tm_rw}     <= {LOW, HIGH};
                    35: {tm_latch, tm_out} <= {HIGH, C_DISP}; // display on, full bright
                    36: {tm_cs, instruction_step} <= {HIGH, 6'b0};

                endcase

                instruction_step <= instruction_step + 1;

            end else if (busy) begin
                // pull latch low next clock cycle after module has been
                // latched
                tm_latch <= LOW;
            end

            counter <= counter + 1;
        end
    end
endmodule
