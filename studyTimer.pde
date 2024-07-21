int study_rad = 0;
int study_x = -570,study_y = -570;
int study_dx = 1,study_dy = 1;
void studyTimer(){
    if(study_x>=-570 && study_x<=-230 && study_y==-570){
        study_x += study_dx;
    }
    if(study_x==-230 && study_y>=-570 && study_y<=-160){
        study_y += study_dy;
    }
    if(study_x>=-570 && study_x<=-230 && study_y==-160){
        study_x -= study_dx;
    }
    if(study_x==-570 && study_y>=-570 && study_y<=-160){
        study_y -= study_dy;
    }
    
  

    // study_x += study_dx;
    // study_y += study_dy;
    study_rad += 1;
    if(study_rad>360){
        study_rad = 0;
    }//画像が一回転したら0度に戻す
    image(back2, 0, 0, width, height);
    text("勉強中",200,350);
    showTimer();
    rotateImage(study_x,study_y,studySheep,study_rad,120,120);
}