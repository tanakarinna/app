float cookSheep_x,cookSheep_y,cookSheep_w,cookSheep_h,cookSheep_dx,cookSheep_dy;//料理羊の情報
float eatSheep_x,eatSheep_y,eatSheep_w,eatSheep_h,eatSheep_dx,eatSheep_dy;//食事羊の情報
float blushTeethSheep_x,blushTeethSheep_y,blushTeethSheep_w,blushTeethSheep_h,blushTeethSheep_dx,blushTeethSheep_dy;//羊の情報
float washDishSheep_x,washDishSheep_y,washDishSheep_w,washDishSheep_h,washDishSheep_dx,washDishSheep_dy;//皿洗いの情報
float studySheep_x,studySheep_y,studySheep_w,studySheep_h,studySheep_dx,studySheep_dy;//皿洗いの情報
void showSheeps() {
    image(sheepBack, 0, 0, width, height);
    ellipse(cookSheep_x, cookSheep_y, cookSheep_w, cookSheep_h);
    cookSheep_x += cookSheep_dx;
    cookSheep_y += cookSheep_dy;
    
    
    
    
    
    
}

void initcookSheep() {
    cookSheep_x = 0;
    cookSheep_y = 0;
    cookSheep_w = 30;
    cookSheep_h = 30;
    cookSheep_dx = 10;
    cookSheep_dy = 10;
    
}