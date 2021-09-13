/**
 * Transparency. 
 * 
 * Move the pointer left and right across the image to change
 * its position. This program overlays one image over another 
 * by modifying the alpha value of the image with the tint() function. 
 */

PImage img;

void setup() {
  size(640, 480);
  img = loadImage("01_imagen.jpg");  // Load an image into the program
}

int cant = 4;
void draw() {
  for (int i=0;i<cant;i++){
    for (int j=0;j<cant;j++){
     image(img, (width/cant)*i , (height/cant)*j, width/cant,height/cant); 
    }
  }
}
