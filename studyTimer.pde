int study_rad = 0;
int study_x = -570,study_y = -570;
int study_dx = 1,study_dy = 1;
void studyTimer() {
    if (study_x >= -570 && study_x <= -230 && study_y == -570) {
        study_x += study_dx;
    }
    if (study_x == -230 && study_y >= -570 && study_y <= -160) {
        study_y += study_dy;
    }
    if (study_x >= -570 && study_x <= -230 && study_y == -160) {
        study_x -= study_dx;
    }
    if (study_x == -570 && study_y >= -570 && study_y <= -160) {
        study_y -= study_dy;
    }
    
    
    
    study_rad += 1;
    if (study_rad > 360) {
        study_rad = 0;
    } //画像が一回転したら0度に戻す
    image(timerBack, 0, 0, width, height);
    if (timerRunning) {
        textSize(25);
        text("勉強中...",200,200);
    } else{
        textSize(25);
        text("勉強終わり！",170,200);
    }
    showTimer();
    rotateImage(study_x,study_y,studySheep,study_rad,120,120);
    textSize(15);
    text("Sを押すとタイマーが止まるよ",140,370);
    text("Bを押すとタスク選択画面に戻るよ",125,390);
}