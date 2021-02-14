public void setup() {
  size(800, 800);
  rectMode(CENTER);
}

public void draw() {
  background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  myFractal(400, 400, 800);
}

public void myFractal(int x, int y, int ss) {
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(x, y, ss, ss);

  if (ss > 10) {
    myFractal(x/2, y/2, ss/2);
    myFractal(x/2, (800+y)/2, ss/2);
    myFractal((800+x)/2, y/2, ss/2);
    myFractal((800+x)/2, (800+y)/2, ss/2);
  }
}
