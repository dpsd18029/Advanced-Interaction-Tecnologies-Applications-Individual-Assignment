import processing.video.*;
Capture video;

void setup() {
  size(620, 440);
  println(Capture.list());

  video = new Capture(this, 620, 440);
  video.start();
}

void captureEvent(Capture video) {

  video.read();
}

void draw() {

  image(video, 0, 0);
}
