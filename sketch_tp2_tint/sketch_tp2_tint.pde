/**
 * Transparency. 
 * 
 * Move the pointer left and right across the image to change
 * its position. This program overlays one image over another 
 * by modifying the alpha value of the image with the tint() function. 
 */

PImage img;
float offset = 0;
float easing = 0.05;

void setup() {
  size(640, 480);
  img = loadImage("01_imagen.jpg");  // Load an image into the program
}

void draw() {
  image(img, 0, 0);  // Display at full opacity
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing;
  tint(255, 127);  // Display at half opacity
  image(img, offset, 0);
}
