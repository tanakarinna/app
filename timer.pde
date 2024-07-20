void showTimer(){
  // background(35,59,108);
  // fill(255,255,255);
  // textSize(20);
  if (taskSelected = true){
    image(back2, 0, 0, width, height);
    fill(255,255,255);
    textSize(20);
    int passTime = millis() - startTime;
    text("Selected Task:" + (selectedTask + 1), 20, 230);
    text(passTime/1000, width/2-80, height/2);
    text("If you want to stop the timer, press S.", 20, 250);
  }
}