void showTimer(){
   int passTime = millis() - startTime;
   int stopAfter = millis() - stopTime;//sを押した後の経過時間
   int stopResult = passTime - stopAfter;//かかった時間
  // background(35,59,108);
  // fill(255,255,255);
  // textSize(20);
  if (timerRunning == true){
    fill(255,255,255);
    textSize(20);
    // text("Selected Task:" + (selectedTask + 1), 20, 230);
    text(passTime/1000, width/2-80, height/2);
    // text("If you want to stop the timer, press S.", 20, 250);
  }else {
    text(stopResult/1000, width/2-80, height/2); 
  }
}