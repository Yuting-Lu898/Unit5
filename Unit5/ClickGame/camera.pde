//import processing.video.*;
//Capture cam;
//boolean cameraOn = false;
//boolean photoTaken = false;
//PImage photo;

//void setup() {
//  size(800, 600);
//  cam = new Capture(this, 640, 480);
//}

//void draw() {
//  background(220);
//  fill(100);
//  rect(50, 500, 200, 60);
//  fill(255);
//  textSize(24);

//  if (!cameraOn) {
//    text("Open Camera", 70, 540);
//  } else {
//    text("Take Photo", 80, 540);
//  }

//  if (cameraOn && !photoTaken) {
//    if (cam.available()) {
//      cam.read();
//    }
//    image(cam, 80, 50);
//  }
//  if (photoTaken) {
//    image(photo, 80, 50);
//  }
//}

//void mousePressed() {

//  if (mouseX > 50 && mouseX < 250 &&
//      mouseY > 500 && mouseY < 560) {
//    if (!cameraOn) {
//      cam.start();
//      cameraOn = true;
//    }
//    else if (!photoTaken) {
//      photo = cam.get();
//      photoTaken = true;
//      cam.stop();
//    }
//  }
//}
