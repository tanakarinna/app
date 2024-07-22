int washFace_rad = 0;
int washFace_x = -570, washFace_y = -570;
int washFace_dx = 1, washFace_dy = 1;

void washFaceTimer() {
    if (washFace_x >= -570 && washFace_x <= -230 && washFace_y == -570) {
        washFace_x += washFace_dx;
    }
    if (washFace_x == -230 && washFace_y >= -570 && washFace_y <= -160) {
        washFace_y += washFace_dy;
    }
    if (washFace_x >= -570 && washFace_x <= -230 && washFace_y == -160) {
        washFace_x -= washFace_dx;
    }
    if (washFace_x == -570 && washFace_y >= -570 && washFace_y <= -160) {
        washFace_y -= washFace_dy;
    }
    
    washFace_rad += 1;
    if (washFace_rad > 360) {
        washFace_rad = 0;
    } // 画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("洗顔中...", 200, 200);
    } else {
        textSize(25);
        text("洗顔終わり！", 180, 200);
    }
    showTimer();
    rotateImage(washFace_x, washFace_y, washFaceSheep, washFace_rad, 120, 120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ", 140, 370);
    text("Bを押すとホーム画面に戻るよ", 125, 390);
}
