int washDishes_rad = 0;
int washDishes_x = -570, washDishes_y = -570;
int washDishes_dx = 1, washDishes_dy = 1;

void washDishesTimer() {
    if (washDishes_x >= -570 && washDishes_x <= -230 && washDishes_y == -570) {
        washDishes_x += washDishes_dx;
    }
    if (washDishes_x == -230 && washDishes_y >= -570 && washDishes_y <= -160) {
        washDishes_y += washDishes_dy;
    }
    if (washDishes_x >= -570 && washDishes_x <= -230 && washDishes_y == -160) {
        washDishes_x -= washDishes_dx;
    }
    if (washDishes_x == -570 && washDishes_y >= -570 && washDishes_y <= -160) {
        washDishes_y -= washDishes_dy;
    }
    
    washDishes_rad += 1;
    if (washDishes_rad > 360) {
        washDishes_rad = 0;
    } // 画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("皿洗い中...", 190, 200);
    } else {
        textSize(25);
        text("皿洗い終わり！", 160, 200);
    }
    showTimer();
    rotateImage(washDishes_x, washDishes_y, washDishSheep, washDishes_rad, 120, 120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ", 140, 370);
    text("Bを押すとタスク選択画面に戻るよ", 125, 390);
}
