int readBook_rad = 0;
int readBook_x = -570, readBook_y = -570;
int readBook_dx = 1, readBook_dy = 1;

void readBookTimer() {
    if (readBook_x >= -570 && readBook_x <= -230 && readBook_y == -570) {
        readBook_x += readBook_dx;
    }
    if (readBook_x == -230 && readBook_y >= -570 && readBook_y <= -160) {
        readBook_y += readBook_dy;
    }
    if (readBook_x >= -570 && readBook_x <= -230 && readBook_y == -160) {
        readBook_x -= readBook_dx;
    }
    if (readBook_x == -570 && readBook_y >= -570 && readBook_y <= -160) {
        readBook_y -= readBook_dy;
    }
    
    readBook_rad += 1;
    if (readBook_rad > 360) {
        readBook_rad = 0;
    } //画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("読書中...", 200, 200);
    } else {
        textSize(25);
        text("読書終わり！", 180, 200);
    }
    showTimer();
    rotateImage(readBook_x, readBook_y, readBookSheep, readBook_rad, 120, 120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ", 140, 370);
    text("Bを押すとホーム画面に戻るよ", 140, 390);
}
