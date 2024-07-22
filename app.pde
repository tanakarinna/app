int scene = 0;
PImage homeBack;
PImage taskBack;
PImage timerBack;
PImage recordBack;
PImage sheepBack;
PImage studySheep;
PImage blushTeethSheep;
PImage cookSheep;
PImage eatSheep;
PImage pianoSheep;
PImage washDishSheep;
PImage washFaceSheep;
PImage readBookSheep;
PImage hukidasi1;
PImage hukidasi2;
PImage hukidasi3;
PImage normalSheep;
PImage sleepSheep;
PImage smileSheep;
PImage piiman;
PImage tomato;
PImage nasubi;
PImage piimanSheep;
PImage tomatoSheep;
PImage nasubiSheep;


void setup() {
    size(480,640);
    // initcookSheep();
    homeBack = loadImage("homeBack.png");
    taskBack = loadImage("taskBack.png");
    timerBack = loadImage("timerBack.png");
    recordBack = loadImage("recordBack.png");
    sheepBack = loadImage("sheepBack.png");
    studySheep = loadImage("studySheep.png");
    blushTeethSheep = loadImage("blushTeethSheep.png");
    cookSheep = loadImage("cookSheep.png");
    eatSheep = loadImage("eatSheep.png");
    pianoSheep = loadImage("playPianoSheep.png");
    washDishSheep = loadImage("washDishSheep.png");
    washFaceSheep = loadImage("washFaceSheep.png");
    readBookSheep = loadImage("readBookSheep.png");
    hukidasi1 = loadImage("hukidasi1.png");
    hukidasi2 = loadImage("hukidasi2.png");
    hukidasi3 = loadImage("hukidasi3.png");
    normalSheep = loadImage("normalSheep.png");
    sleepSheep = loadImage("sleepSheep.png");
    smileSheep = loadImage("smileSheep.png");
    piiman = loadImage("piiman.png");
    tomato = loadImage("tomato.png");
    nasubi = loadImage("nasubi.png");
    piimanSheep = loadImage("piimanSheep.png");
    tomatoSheep = loadImage("tomatoSheep.png");
    nasubiSheep = loadImage("nasubiSheep.png");
    PFont font = createFont("MicrosoftJhengHeiUILight-48",200);
    textFont(font);
}

void draw() {
    //  background(35,59,108);
    //  clock();
    switch(scene) {
        case 0:
            home();
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
            pianoTimer();
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
        case 11:
            showTask();
            clock();
            break;
    }
    //  displayTask();
    //  taskTime();
}
