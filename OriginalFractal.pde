public void setup() {
  size(400, 400);
  rectMode(CENTER);
}

public void draw() {
  background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  myFractal(200, 200, 300);
}

public void myFractal(int x, int y, int ss) {
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  square(x, y, ss);
  if (ss > 10) {
    myFractal(x/2, y/2, ss/2);
    myFractal(x/2, 3*y/2, ss/2);
    myFractal(3*x/2, y/2, ss/2);
    myFractal(3*x/2, 3*y/2, ss/2);
  }
}
