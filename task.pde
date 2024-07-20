// int task1 = 0;
// int task2 = 1;
// int task3 = 2;
// int task4 = 3;
// int task5 = 4;

int startTime;

boolean taskSelected =   false;
boolean timerRunning = false;

int selectedTask = 0;//タスクの初期値がが未選択状態



void showTask(){
    image(back1, 0, 0, width, height);
    fill(255,255,255);
    textSize(20);
    text("＜夜を有意義に過ごすためのタスク＞", 20, 70);
    text("タスクを選んで、番号を押そう",20,110);
    textSize(20);
    text("1.ごはんを作る", 40, 150);
    text("2.ごはんを食べる", 40, 190);
    text("3.歯をみがく", 40, 230);
    text("4.お皿を洗う", 40, 270);
    text("5.勉強をする", 40, 310);
    text("6.顔を洗う",40,350);
    textSize(20);
    text("Rを押すと記録が見れるよ",20,460);
    text("Fを押すと羊を観察できるよ",20,500);
}

void keyPressed(){
  if(key >= '1'&&key <= '6' ){
    scene=2;
    // selectedTask = key - '1';// タスクを選択
    taskSelected = true;
    timerRunning = true;
    startTime = millis();
    // 
  } else if (key=='s'|| key=='S'){
    if (timerRunning) {
      timerRunning = false;
      taskSelected = false;
      showTask();
        scene = 1;
    } 
  }
  if (key == 'r'||key == 'R') {
      //記録画面
      scene=3;
  }
  if (key == 'b' || key == 'B') {
    // タスク選択画面に戻る
      scene=1;
  }
  if (key == 'f' || key == 'F') {
    // 羊画面
      scene=4;
  }
}


/*
記録の保存、わからない
*/
// void saveTaskRecord(int task, int time) {
//   String timestamp = year() + "-" + nf(month(), 2) + "-" + nf(day(), 2) + " " + nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2);
//   String record = timestamp + ",Task " + (task + 1) + "," + time / 1000 + " seconds";
//   saveStrings("task_records.txt", append(loadStrings("task_records.txt"), record));
// }

/*
記録の閲覧、わからない
*/
void showRecords() {
  image(back3, 0, 0, width, height);
  fill(0);
  textSize(12);
  
  // String[] records = loadStrings("task_records.txt");
  // if (records != null) {
  //   int y = 20;
  //   for (String record : records) {
  //     text(record, 20, y);
  //     y += 20;
  //   }
  // } else {
  //   text("No records found.", 20, 20);
  // }
  
  textSize(16);
  text("Press 'B' to go back", 20, height - 30);
}