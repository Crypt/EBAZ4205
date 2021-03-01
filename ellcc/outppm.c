#include <stdio.h>

#define WIDTH  800
#define HEIGHT 600

int main(int argc, char *argv[])
{
  int x,y;
  FILE *f = fopen("out.ppm","w");

  if(f==NULL) {
    fprintf(stderr,"Unable to open out.ppm");
    return 3;
  }
  fprintf(f,"P6\n");
  fprintf(f,"%i %i\n",WIDTH,HEIGHT);
  fprintf(f,"255\n");

  for(x = 0; x < WIDTH; x++)
    for(y = 0; y < HEIGHT; y++)
    {
      putc(x,  f); /* Red   */
      putc(y,  f); /* Green */
      putc(x+y,f); /* Blue  */
    }
  fclose(f);
  return 0;
}

