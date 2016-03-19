PFont tick_font;

SampleStopWatch stop_watch;

void setup() {
  size(640, 400);
  noCursor();

  tick_font = createFont("Impact", 48);

  stop_watch = new SampleStopWatch();
  stop_watch.center.x = width / 2;
  stop_watch.center.y = height / 2 + 20;
  stop_watch.radius = height / 2 - 50;
}

void draw() {
  background(#000000);
  drawColorBar();
  drawStopWatch();
  drawTick();
}

void drawTick() {
  textFont(tick_font);
  stroke(#ffffff);
  fill(#ffffff);
  text("tick=" + System.currentTimeMillis(), 10, 60);    
  text("fps=" + (int)frameRate, 480, 380);
}

void drawStopWatch() {
  stop_watch.draw();
}

void drawColorBar() {
  int w_1_7 = width * 1 / 7;
  int w_1_6 = width * 1 / 6;
  int w_1_21 = width * 1 / 21;
  int h_8_12 = height * 8 / 12;
  int h_1_12 = height * 1 / 12;
  int h_9_12 = height * 9 / 12;
  int h_3_12 = height * 3 / 12;

  background(#101010);
  noStroke();

  // 1st line
  color [] c1 = {
    #b4b4b4, #b4b40c, #0db4b4, #0db40c, #b410b4, #b40f0e, #0f0fb4
  };
  for (int i = 0; i < c1.length; ++i) {
    fill(c1[i]);
    rect(w_1_7 * i, 0, w_1_7 + 3, h_8_12);
  }

  // 2nd line
  color [] c2 = {
    #0f0fb4, #b410b4, #0db4b4, #b4b4b4
  };
  for (int i = 0; i < c2.length; ++i) {
    fill(c2[i]);
    rect(w_1_7 * i * 2, h_8_12, w_1_7 + 3, h_1_12);
  }

  // 3rd line
  color [] c3 = {
    #081d42, #ebebeb, #2c005c
  };
  for (int i = 0; i < c3.length; ++i) {
    fill(c3[i]);
    rect(w_1_6 * i, h_9_12, w_1_6, h_3_12 + 3);
  }

  color [] c5 = {
    #070707, #101010, #181818
  };
  for (int i = 0; i < c3.length; ++i) {
    fill(c5[i]);
    rect(w_1_7 * 5 + w_1_21 * i, h_9_12, w_1_21, h_3_12 + 3);
  }
}