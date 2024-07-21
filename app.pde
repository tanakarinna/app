int scene = 0;
PImage back1;
PImage back2;
PImage back3;
PImage back4;
PImage studySheep;
PImage blushTeethSheep;
PImage cookSheep;
PImage eatSheep;
PImage playPianoSheep;
PImage washDishSheep;
PImage washFaceSheep;
PImage readBookSheep;

void setup() {
     size(480,640);
     initcookSheep();
     back1 = loadImage("back1.png");
     back2 = loadImage("back2.png");
     back3 = loadImage("back3.png");
     back4 = loadImage("back4.png");
     studySheep = loadImage("studySheep.png");
     blushTeethSheep = loadImage("blushTeethSheep.png");
    cookSheep = loadImage("cookSheep.png");
    eatSheep = loadImage("eatSheep.png");
    playPianoSheep = loadImage("playPianoSheep.png");
    washDishSheep = loadImage("washDishSheep.png");
    washFaceSheep = loadImage("washFaceSheep.png");
    readBookSheep = loadImage("readBookSheep.png");
    PFont font=createFont("MicrosoftJhengHeiUILight-48",200);
    textFont(font);
}

void draw() {
//  background(35,59,108);
//  clock();
 switch(scene) {
    case 0:
      showTask();
      clock();
    break;
    case 1:
    cookTimer();
    break;
    case 2:
    eatTimer();
    break;
    case 3:
    blushTeethTimer();
    break;
    case 4:
    washDishesTimer();
    break;
    case 5:
    studyTimer();
    break;
    case 6:
    washFaceTimer();
    break;
    case 7:
    playPianoTimer();
    break;
    case 8:
    readBookTimer();
    break;
    case 9:
    showRecords();
    clock();
    break;
    case 10:
    showSheeps();
    clock();
    break;
  }
//  displayTask();
//  taskTime();
}
