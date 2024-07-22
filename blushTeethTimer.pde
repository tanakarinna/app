int blushTeeth_rad = 0;
int blushTeeth_x = -570, blushTeeth_y = -570;
int blushTeeth_dx = 1, blushTeeth_dy = 1;

void blushTeethTimer() {
    if (blushTeeth_x >= -570 && blushTeeth_x <= -230 && blushTeeth_y == -570) {
        blushTeeth_x += blushTeeth_dx;
    }
    if (blushTeeth_x == -230 && blushTeeth_y >= -570 && blushTeeth_y <= -160) {
        blushTeeth_y += blushTeeth_dy;
    }
    if (blushTeeth_x >= -570 && blushTeeth_x <= -230 && blushTeeth_y == -160) {
        blushTeeth_x -= blushTeeth_dx;
    }
    if (blushTeeth_x == -570 && blushTeeth_y >= -570 && blushTeeth_y <= -160) {
        blushTeeth_y -= blushTeeth_dy;
    }
    
    blushTeeth_rad += 1;
    if (blushTeeth_rad > 360) {
        blushTeeth_rad = 0;
    } // 画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("歯磨き中...", 190, 200);
    } else {
        textSize(25);
        text("歯磨き終わり！", 160, 200);
    }
    showTimer();
    rotateImage(blushTeeth_x, blushTeeth_y, blushTeethSheep, blushTeeth_rad, 120, 120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ", 140, 370);
    text("Bを押すとタスク選択画面に戻るよ", 125, 390);
}
