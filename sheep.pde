// boolean kansatu_serihu1 = true;
// boolean kansatu_serihu2 = false;
boolean kuuhuku = true;
boolean piimanEat = false;
boolean tomatoEat = false;
boolean nasubiEat = false;

void showSheeps() {
    image(sheepBack, 0, 0, width, height);
    // if (kansatu_serihu1 == true) {
    //     textSize(18);
    //     text("あげたい野菜の番号を押してね", 110, 250);
    
// }
    if (kuuhuku == true) {
        image(normalSheep, 130, 320, 220, 220);
        image(piiman, 70, 120, 100, 100);
        image(tomato, 190, 120, 100, 100);
        image(nasubi, 310, 120, 100, 100);
        text("①", 115, 110);
        text("②", 232, 110);
        text("③", 348, 110);
        textSize(15);
        text("あげたい野菜の番号を押してね", 130, 240);
        text("Bを押すとホーム画面に戻るよ", 135, 260);
    } else if (piimanEat == true) {
        image(piimanSheep, 130, 320, 220, 220);
        image(tomato, 190, 120, 100, 100);
        image(nasubi, 310, 120, 100, 100);
        text("①", 115, 110);
        text("②", 232, 110);
        text("③", 348, 110);
        textSize(15);
        text("oを押すとおかわりできるよ", 150, 255);
    } else if (tomatoEat == true) {
        image(tomatoSheep, 130, 320, 220, 220);
        image(piiman, 70, 120, 100, 100);
        image(nasubi, 310, 120, 100, 100);
        text("①", 115, 110);
        text("②", 232, 110);
        text("③", 348, 110);
        textSize(15);
        text("oを押すとおかわりできるよ", 150, 255);
    } else if (nasubiEat == true) {
        image(nasubiSheep, 130, 320, 220, 220);
        image(piiman, 70, 120, 100, 100);
        image(tomato, 190, 120, 100, 100);
        text("①", 115, 110);
        text("②", 232, 110);
        text("③", 348, 110);
        textSize(15);
        text("oを押すとおかわりできるよ", 150, 255);
    }
    
    
    
    
    
    
    
}

