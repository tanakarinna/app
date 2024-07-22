int piano_rad = 0;
int piano_x = -570, piano_y = -570;
int piano_dx = 1, piano_dy = 1;

void pianoTimer() {
    if (piano_x >= -570 && piano_x <= -230 && piano_y == -570) {
        piano_x += piano_dx;
    }
    if (piano_x == -230 && piano_y >= -570 && piano_y <= -160) {
        piano_y += piano_dy;
    }
    if (piano_x >= -570 && piano_x <= -230 && piano_y == -160) {
        piano_x -= piano_dx;
    }
    if (piano_x == -570 && piano_y >= -570 && piano_y <= -160) {
        piano_y -= piano_dy;
    }
    
    piano_rad += 1;
    if (piano_rad > 360) {
        piano_rad = 0;
    } //画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("ピアノ練習中...", 160, 200);
    } else {
        textSize(25);
        text("ピアノ練習終わり！", 140, 200);
    }
    showTimer();
    rotateImage(piano_x, piano_y, pianoSheep, piano_rad, 120, 120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ", 140, 370);
    text("Bを押すとホーム画面に戻るよ", 125, 390);
}