int eat_rad = 0;
int eat_x = -570, eat_y = -570;
int eat_dx = 1, eat_dy = 1;

void eatTimer() {
    if (eat_x >= -570 && eat_x <= -230 && eat_y == -570) {
        eat_x += eat_dx;
    }
    if (eat_x == -230 && eat_y >= -570 && eat_y <= -160) {
        eat_y += eat_dy;
    }
    if (eat_x >= -570 && eat_x <= -230 && eat_y == -160) {
        eat_x -= eat_dx;
    }
    if (eat_x == -570 && eat_y >= -570 && eat_y <= -160) {
        eat_y -= eat_dy;
    }
    
    eat_rad += 1;
    if (eat_rad > 360) {
        eat_rad = 0;
    } // 画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("食事中...", 200, 200);
    } else {
        textSize(25);
        text("食事終わり！", 180, 200);
    }
    showTimer();
    rotateImage(eat_x, eat_y, eatSheep, eat_rad, 120, 120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ", 140, 370);
    text("Bを押すとタスク選択画面に戻るよ", 125, 390);
}
