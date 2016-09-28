import controlP5.*;
ControlP5 cp5;
ControlTimer c;
Textlabel t;
Textarea myTextarea;
int size; 
String textValue = "";

float x;
float y;
float x2;
float y2;
float x3;
float y3;
float easing = 0.05;
float easing2 =0.8;
float easing3 = 0.4;
int r = 51;
int g = 51;
int b = 51;

void setup() {
  size(640, 480); 
  noStroke();
 
  
  cp5 = new ControlP5(this);
  ButtonBar b = cp5.addButtonBar("bar")
     .setPosition(0, 450)
     .setSize(400, 20)
     .addItems(split("a b c d e f g h i j"," "))
     ;
     println(b.getItem("a"));
  b.changeItem("a","text","first");
  b.changeItem("b","text","second");
  b.changeItem("c","text","third");
  b.onMove(new CallbackListener(){
    public void controlEvent(CallbackEvent ev) {
      ButtonBar bar = (ButtonBar)ev.getController();
      println("hello ",bar.hover());
    }
  });
   c = new ControlTimer();
   t = new Textlabel(cp5,"--",100,100);
   c.setSpeedOfTime(1);
  cp5.addSlider("size")
  .setPosition(40,420)
  .setSize(200,20)
  .setRange(0,200)
  .setValue(200)
  .setColorCaptionLabel(color(20,20,20));
  myTextarea= cp5.addTextarea("txt")
                .setPosition(40, 90)
                .setSize(200,200)
                .setFont(createFont("aria",15))
                .setLineHeight(14)
                .setColor(color(128))
                .setColorBackground(color(255,100))
                .setColorForeground(color(255,100));
                ;
  myTextarea.setText("Instruction :"
                    +"Left click the mouse to change the ball color to random colour and it will move faster. "
                    +"Right click the mouse to change the ball color to red and it will move slightly slower then black. "
                    +"Press UP button in the keyboard to change the background color to blue. "
                    +"Press DOWN button in the keyboard to change the background color to green. "
                    +"Press RIGHT button in the keyboard to change the background color to orange. "
                    +"Press LEFT button in the keyboard to change the background color to grey. "
                    +"The Slider is to adjust the size of the ball. "
                    +"Slide right to enlarge the ball while slide left to make it smaller. "
                    );
     cp5.addTextfield("name")
     .setPosition(40,300)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setFocus(true)
     .setColor(color(150))
     ;
 
                 

}




  
void draw() {
  
  background (r,g,b);
  text(cp5.get(Textfield.class,"name").getText(),40,400);
  text(textValue, 100,400);
 
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(x, y, size+50, size+50);
  if (mouseButton == LEFT ){
     t.setValue(c.toString());
  t.draw(this);  t.setPosition(700, 40);
    cursor();
    fill (random(255),random(255),random(255)) ; 
   float targetX2 = mouseX;
  float dx2 = targetX2 - x;
  x += dx * easing; 
  float targetY2 = mouseY;
  float dy2 = targetY2 - y;
  y += dy * easing2;}

    else if (mouseButton == RIGHT ) {
     t.setValue(c.toString());
  t.draw(this);  t.setPosition(700, 40);
    cursor();  
    fill (255,0,0); 
   float targetX3 = mouseX;
  float dx3 = targetX3 - x;
  x += dx * easing; 
  float targetY3 = mouseY;
  float dy3 = targetY3 - y;
  y += dy * easing2;}else {
         t.setValue(c.toString());
  t.draw(this);  t.setPosition(700, 40);
fill (255);
 

} 
   
}
 void keyPressed() {
 if ( key == CODED ) {
   if (keyCode == UP ) {
     r = 10;
     g = 118;
     b =255;
   } else if ( keyCode == DOWN ) {
     r =10;
     g = 255;
     b = 204;
  } else if ( keyCode == RIGHT){
    r = 255 ;
    b = 10;
    g = 133;
  } else { 
    r = 51;
    g = 51;
    b = 51;
  }
 }
 }
