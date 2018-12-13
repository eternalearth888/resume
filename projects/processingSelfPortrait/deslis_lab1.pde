int moonWidth = 200;
int moonHeight = 200;

float innerWidth = moonWidth/1.5;
float innerHeight = moonHeight/1.5;
   

int r = 100;
float cx;
float cy;
float a = 0.05;

void setup() {
  size (400,400);
}


// got stars background from : https://funprogramming.org/22-Stars-blinking-at-night-fade-out-effect.html
void draw() {
   drawStars();
   drawMoon();
   //drawSpiral();
}

void drawStars() {
  //color over the last set of stars
  fill(255,204,204,10);
  rect(0,0, width,height);
  
  //draw the circles as stars
  fill(255);
  ellipse(random(width), random(height), 2,2); 
}

// sailor moon crescent moon
void drawMoon(){
  // draw back to fronts
   //yellow
   fill(255,255,203);
   ellipse(width/2, height/2, moonWidth, moonHeight);

       //shade
       fill(242,230,255);
       //fill(random(242),random(230),random(255));
       ellipse(width/2, height/2.4, moonWidth/1.5, moonHeight/1.5);
}

//Spiral code found on : https://forum.processing.org/two/discussion/13125/for-loop-to-make-a-spiral
void drawSpiral(){
  cx = width / 2;
  cy = height / 2.4;
  
  for (int i = 0; i < 750; i++) {
        float t = radians(i);
        float x = cx + a * t * r * cos(t);
        float y = cy + a * t * r * sin(t);
        point(x, y);
    } 
}
