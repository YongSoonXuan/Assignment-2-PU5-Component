float x;
float y;
float easing = 0.05;
int value = 0;
int size = 70;

void setup() {
  size(640, 360); 
  noStroke();  
  noCursor();
}

void draw() { 
  background(random(255),random(255),random(255));
  
  
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(x, y, size, size);
}

void mouseClicked(){
  if (mouseButton == LEFT){
    if (size == 50){
    size = 70;
  } else {
    size = 50;
  }
}

  if (mouseButton == RIGHT){
    if (value == 0){
    value = 255;
  }else{
    value = 0;
  }
}
}
  
void keyPressed(){
 
 int z = 0;
 
 if (key == CODED){
   
 if (keyCode == UP){
   
 if (z < 100){
   line(z,0,z,100);
   z = z + 1;
 } else {
   noLoop();
 }
 saveFrame ("/Users/Samson/Desktop/InteractionDesign/"+nf(day(),2)+"_"+nf(month(),2)+"_"+nf(year(),2)+"/"+nf(hour(),2)+nf(minute(),2)+nf(second(),2)+".png");
 }
}
}

