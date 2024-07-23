void showTimer() {
    int passTime = millis() - startTime;
    int stopAfter = millis() - stopTime;//sを押した後の経過時間
    int stopResult = passTime - stopAfter;//かかった時間
    //background(35,59,108);
    //fill(255,255,255);
    //textSize(20);
    if (timerRunning == true) {
        fill(255,255,255);
        textSize(45);
        // text("Selected Task:" + (selectedTask + 1), 20, 230);
        stroke(255);
        strokeWeight(4);
        noFill();
        rect(130, 220, 230, 75);
        text(passTime / 1000 / 3600 + "h" + passTime / 1000 % 3600 + "m" + passTime / 1000 % 60 + "s", 150, 270);
        // text("If you want to stop the timer, press S.", 20, 250);
    }
    else {
        fill(255,255,255);
        textSize(45);
        stroke(255);
        strokeWeight(4);
        noFill();
        rect(130, 220, 230, 75);
        text(stopResult / 1000 / 3600 + "h" + stopResult / 1000 % 3600 + "m" + stopResult / 1000 % 60 + "s", 150, 270); 
    }
}