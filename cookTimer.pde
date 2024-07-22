int cook_rad = 0;
int cook_x = -570,cook_y = -570;
int cook_dx = 1,cook_dy = 1;
void cookTimer() {
    if (cook_x >= -570 && cook_x <= -230 && cook_y == -570) {
        cook_x += cook_dx;
    }
    if (cook_x == -230 && cook_y >= -570 && cook_y <= -160) {
        cook_y += cook_dy;
    }
    if (cook_x >= -570 && cook_x <= -230 && cook_y == -160) {
        cook_x -= cook_dx;
    }
    if (cook_x == -570 && cook_y >= -570 && cook_y <= -160) {
        cook_y -= cook_dy;
    }
    
    
    
    cook_rad += 1;
    if (cook_rad > 360) {
        cook_rad = 0;
    } //画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("料理中...",200,200);
    } else{
        textSize(25);
        text("料理終わり！",170,200);
    }
    showTimer();
    rotateImage(cook_x,cook_y,cookSheep,cook_rad,120,120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ",140,370);
    text("Bを押すとタスク選択画面に戻るよ",125,390);
}
