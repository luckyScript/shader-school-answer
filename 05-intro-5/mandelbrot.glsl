vec2 generatemandel(vec2 z, vec2 c)
{
  return vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
}
bool mandelbrot(highp vec2 c) {

  //Test if the point c is inside the mandelbrot set after 100 iterations
  bool isIn = false;
  vec2 z = vec2(0.0);
  for (int i = 0; i != 100; i++)
  {
    z = generatemandel(z, c);
  }
  if (length(z) < 2.0)
  {
    isIn = true;
  }
  return isIn;
}


//Do not change this line or the name of the above function
#pragma glslify: export(mandelbrot)
