public void setup(){
  size(500, 500);
  background(0);
  recursiveCircle(250, 250, 300);
}

public void draw(){
  if(mousePressed == true){
    background(0);
    recursiveCircle(250, 250, (int)(Math.random()* 500));
  }
}

public color randomColor(){
  return color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
}

public void recursiveCircle(int x, int y, int r){
  if(r <= 10){
    ellipse(x, y, r, r);
  } else{
    fill(randomColor());
    ellipse(x, y, r, r);
    recursiveCircle(x, y, r / 2);
  }
}

