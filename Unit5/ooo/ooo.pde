import processing.video.*;

Capture cam;

boolean cameraOn = false;
boolean photoTaken = false;

PImage photo;

void setup() {
  size(800, 600);

  cam = new Capture(this, 640, 480);
}

void draw() {
  background(220);

  // 按钮
  fill(100);
  rect(50, 500, 220, 60);

  fill(255);
  textSize(24);

  if (!cameraOn) {
    text("Open Camera", 70, 540);
  } 
  else if (!photoTaken) {
    text("Take Photo", 80, 540);
  } 
  else {
    text("Save Photo", 85, 540);
  }

  // 摄像头画面
  if (cameraOn && !photoTaken) {
    if (cam.available()) {
      cam.read();
    }

    image(cam, 80, 50, 640, 480);
  }

  // 显示照片
  if (photoTaken) {
    image(photo, 80, 50, 640, 480);
  }
}

void mousePressed() {

  // 判断是否点到按钮
  if (mouseX > 50 && mouseX < 270 &&
      mouseY > 500 && mouseY < 560) {

    // 打开摄像头
    if (!cameraOn) {

      cam.start();
      cameraOn = true;
    }

    // 拍照
    else if (!photoTaken) {

      photo = cam.get();

      photoTaken = true;

      cam.stop();
    }

    // 保存照片
    else {

      selectOutput("Save your photo:", "saveFile");
    }
  }
}

// 保存文件
void saveFile(File selection) {

  if (selection == null) {

    println("Save cancelled");

  } else {

    photo.save(selection.getAbsolutePath() + ".png");

    println("Saved to: " + selection.getAbsolutePath());
  }
}
