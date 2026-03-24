//https://www.youtube.com/watch?v=vNba3jbBSOw

// Variables
PImage boatImage;

// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color outlineColor, c1, c2;

void setup(){
    size(1255,848);
    
    boatImage = loadImage("Gemini_Generated_Image_dgq4i5dgq4i5dgq4.png");
    // Define colors
    outlineColor = color(0,0,255);
    c1 = color(187, 222, 251);
    c2 = color(31, 52, 171);
}

void draw(){
        //hold the space bar or press the mouse button to see the original image of the origami boat
        int b = ((keyPressed && key == ' ' )|| mousePressed) ? 1 : 0;
        int m = (mousePressed) ? 1 : 0;
        
        switch (b) {
        case 1:
            image(boatImage, 0, 0);
            break; // Exits the switch statement
        case 0:
            fill(255);
            setGradient(0, 0, width, height, c1, c2, Y_AXIS);
            setGradient(50, 190, width, height, c2, c1, X_AXIS);
            break;
        // ...
        default:
            // code block for no match
        }

        if(m==0){
            beginShape();
                stroke(outlineColor);
                strokeWeight(4);
                vertex( 21 , 249 );
                vertex( 588 , 336 );
                vertex( 634 , 293 );
                vertex( 686 , 336 );
                vertex( 1252 , 229 );
                vertex( 992 , 624 );
                vertex( 299 , 633 );
            endShape(CLOSE);
            beginShape();
                strokeWeight(4);
                stroke(outlineColor);
                vertex( 21 , 249 );  
                vertex( 465 , 452 );
                vertex( 588 , 336 );
            endShape();
            beginShape();
                strokeWeight(4);
                stroke(outlineColor);
                vertex( 465 , 452 );
                vertex( 633 , 522 );
                vertex( 634 , 293 );
            endShape();
            beginShape();
                strokeWeight(4);
                stroke(outlineColor);
                vertex( 633 , 522 );
                vertex( 808 , 451 );
                vertex( 686 , 336 );
            endShape();
            beginShape();
                strokeWeight(4);
                stroke(outlineColor);
                vertex( 808 , 451 );
                vertex( 1013 , 355 );
                vertex( 1252 , 229 );
            endShape();
            beginShape();
                strokeWeight(4);
                stroke(outlineColor);
                vertex( 633 , 522 );
                vertex( 299 , 633 );
            endShape();
            beginShape();
                strokeWeight(4);
                stroke(outlineColor);
                vertex( 992 , 624 );
                vertex( 633 , 522 );
            endShape();
        }
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
}

void mouseClicked(){
    println("vertex(",mouseX,",",mouseY,");");
}