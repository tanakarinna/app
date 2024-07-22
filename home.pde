boolean serihu1 = false;
boolean serihu2 = false;
boolean serihu3 = false;
boolean aisatu = true;

void home() {
    image(homeBack, 0, 0, width, height);
    clock();
    
    
    if (serihu1 == true) {
        image(hukidasi1,10,90,300,300); 
        image(normalSheep,20,380,150,150);
        image(sleepSheep,170,380,150,150);
        image(sleepSheep,320,380,150,150);
        textSize(18);
        text("Tを押すと",110,220);
        text("タスク選択画面に移動するよ",40,260);
    }
    if (serihu2 == true) {
        image(hukidasi2,110,90,300,300); 
        image(sleepSheep,20,380,150,150);
        image(normalSheep,170,380,150,150);
        image(sleepSheep,320,380,150,150);
        textSize(18);
        text("Rを押すと",220,220); 
        text("今までの記録を見れるよ",160,260);  
    }
    if (serihu3 == true) {
        image(hukidasi3,180,90,300,300);
        image(sleepSheep,20,380,150,150);
        image(sleepSheep,170,380,150,150);
        image(normalSheep,320,380,150,150);
        textSize(18);
        text("Fを押すと",285,220); 
        text("僕を観察できるよ",260,260); 
    }
    if (aisatu == true) {
        image(hukidasi2,110,90,300,300); 
        image(sleepSheep,20,380,150,150);
        image(normalSheep,170,380,150,150);
        image(sleepSheep,320,380,150,150);
        textSize(18);
        text("こんばんは！",200,220); 
        text("有意義な夜を過ごそう",165,260); 
    }
    
    // image(hukidasi1,10,90,300,300);
    // image(hukidasi2,110,90,300,300);
    // image(hukidasi3,180,90,300,300);
    
}