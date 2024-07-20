int scene = 1;
PImage back1;
PImage back2;
PImage back3;
PImage back4;

void setup() {
     size(480,640);
     initcookSheep();
     back1 = loadImage("back1.png");
     back2 = loadImage("back2.png");
     back3 = loadImage("back3.png");
     back4 = loadImage("back4.png");
     PFont font=createFont("MicrosoftJhengHeiUILight-48",200);
     textFont(font);
}

void draw() {
//  background(35,59,108);
//  clock();
 switch(scene) {
    case 1:
      showTask();
      clock();
    break;
    case 2:
      showTimer();
      clock();
    break;
    case 3:
      showRecords();
      clock();
    break;
    case 4:
      showSheeps();
      clock();
    break;
  }
//  displayTask();
//  taskTime();
}
