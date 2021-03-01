/******************************************************
* console.c - a quick look at the basics of the ncurses
*             screen handling library
*
* Compile with
*    gcc -o console -Wall console.c -lncurses
*
* You will need to have ncurses-devel installed for it
* to compile correctly
******************************************************/
#include <stdlib.h>
#include <unistd.h>
#include <ncurses.h>

static void setup_screen()
{
  /* This sets up the screen */
  if(initscr()==NULL) {
    printf("Screen setup failed\n");
    exit(2);
  }

  /* If this is a colour display then select the colours */
  if(has_colors()) {
    start_color();
    init_pair(1,COLOR_GREEN,COLOR_BLACK);
    init_pair(2,COLOR_WHITE,COLOR_RED);
  }

  /* This sets up the keyboard to send character by
     character, without echoing to the screen */
  cbreak();
  noecho();
  keypad(stdscr, TRUE);
  nonl();
  intrflush(stdscr, FALSE);
}

static void display_screen(void)
{
  int maxx, maxy;

  /* Work out how big the screen is */
  getmaxyx(stdscr, maxy, maxx);

  /* This is what we want to display */
  move(0,0); printw("This is how you own the whole screen");

  /* Display this in green */
  if(has_colors()) attron(COLOR_PAIR(1));
  move(2,2); printw("output at line two, column two");

  /* Display something centered on the bottom line */
  move(maxy-1,maxx/2-11);
  if(has_colors())
    attron(COLOR_PAIR(2));
  else
    attron(A_STANDOUT);
  printw("Press 'q' or F1 to quit");

  /* Update the screen */
  refresh();
}

void wait_for_keypress()
{
  int c;

  /* Wait for 'q' or F1 to be pressed */
  c = getch();
  while(c != 'q' && c != KEY_F(1))
    c = getch();
}

static void finish(void)
{
  /* Tidy up the screen and set everything back to normal */
  clear();
  refresh();
  endwin();
}

int main(int argc, char *argv[])
{
  setup_screen();
  display_screen();
  wait_for_keypress();
  finish();
  return 0;
}

