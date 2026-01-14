//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var boomheight=0
var boomwidthyellow=0
var boomwidthred=0
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  

//small child head
fill(255,178,102)
ellipse(300,150,50,50);
fill(0,0,0)
ellipse(290,144,5,5);
ellipse(309,144,5,5);

//small child body
rect(285,175,32,100);
rect(232,190,70,20);
rect(300,190,70,20);
rect(270,275,20,80);
rect(315,275,20,80);
 triangle(302, 243, 271,276, 335, 277);

//explosion
fill(220,200,50)
ellipse( 300,280,boomwidthyellow,boomheight);
fill(200,10,10)
ellipse(300,270,boomwidthred,boomheight);

if(boomheight>1400){boomheight=0;boomwidthred=0;boomwidthyellow=0}
if(mousePressed)boomheight=boomheight+10
if(mousePressed)boomwidthyellow=boomwidthyellow+11
if(mousePressed)boomwidthred=boomwidthred+8
  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
