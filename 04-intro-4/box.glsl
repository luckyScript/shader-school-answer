bool inBox(highp vec2 lo, highp vec2 hi, highp vec2 p) {

  //Test if the point p is inside the box bounded by [lo, hi]
  bool isIn = false;
  bvec2 b1 = lessThanEqual(lo, p);
  bvec2 b2 = lessThanEqual(hi, p);
  if((!(b1.x && b2.x) && (b1.x || b2.x)) && ((!(b1.y && b2.y)) && (b1.y || b2.y))) {
    isIn = true;
  }
  return isIn;
}

//Do not change this line or the name of the above function
#pragma glslify: export(inBox)
