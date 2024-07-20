void clock (){
  fill(255, 255, 255);
  textSize(20);
  text(year()+"/"+month()+"/"+day(), 10, 30);
  text(hour()+":"+minute()+":"+second(), 110, 30);
}
