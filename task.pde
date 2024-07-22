// int task1 = 0;
// int task2 = 1;
// int task3 = 2;
// int task4 = 3;
// int task5 = 4;

int startTime;
int stopTime;

boolean taskSelected =   false;//タスクを選んでいない状態
boolean timerRunning = false;//タイマーが動いてない状態

int selectedTask = 0;//タスクの初期値がが未選択状態

//初期セリフの設定
boolean task_serihu1 = true;
boolean task_serihu2 = false;


void showTask() {
    image(taskBack, 0, 0, width, height);
    fill(255,255,255);
    textSize(20);
    text("~夜を有意義に過ごすためのタスク~", 20, 90);
    // text("タスクを選んで、番号を押そう",20,110);
    textSize(20);
    text("1.ごはんを作る", 40, 150);
    text("2.ごはんを食べる", 40, 190);
    text("3.歯をみがく", 40, 230);
    text("4.お皿を洗う", 40, 270);
    text("5.勉強をする", 40, 310);
    text("6.顔を洗う",40,350);
    text("7.ピアノを弾く", 280, 150);
    text("8.本を読む", 280, 190);
    
    if (task_serihu1 ==  true) {
        textSize(18);
        text("タスクを選んで",90,430);
        text("番号を押してね",90,470);
        image(normalSheep,330,390,150,150);
    } else if (task_serihu2 ==  true) {
        textSize(18);
        text("Bを押すと",110,430);
        text("ホーム画面に戻るよ",70,470);
        image(smileSheep,330,390,150,150);
    }
    
}

// void keyPressed() {
//     if (key == '1') {
//         if (scene ==  11) {
//             scene = 1;
//             // selectedTask = key - '1';// タスクを選択
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//             // 
//         }
//     } 
//     if (key == '2') {
//         if (scene ==  11) {
//             scene = 2;
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//         }
//     }
//     if (key == '3') {
//         if (scene ==  11) {
//             scene = 3;
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//         }
//     } 
//     if (key == '4') {
//         if (scene ==  11) {
//             scene = 4;
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//         }
//     } 
//     if (key == '5') {
//         if (scene ==  11) {
//             scene = 5;
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//         }
//     } 
//     if (key == '6') {
//         if (scene ==  11) {
//             scene = 6;
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//         }
//     } 
//     if (key == '7') {
//         if (scene ==  11) {
//             scene = 7;
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//         }
//     } 
//     if (key == '8') {
//         if (scene ==  11) {
//             scene = 8;
//             taskSelected = true;
//             timerRunning = true;
//             startTime = millis();
//         }
//     } 
//     if (key ==  's' || key ==  'S') {
//         // println("sが押されています");
//         if (timerRunning) {
//             timerRunning = false;
//             stopTime = millis();
//             // scene = 0;
//         } 
//         // println(timerRunning);
//     }
//     if (key == 'r' ||  key == 'R') {
//         //記録画面
//         scene = 9;
//     }
//     if (key == 'b' || key == 'B') {
//         // ホーム選択画面に戻る
//         scene = 0;
//     }
//     if (key == 'f' || key == 'F') {
//         // 羊画面
//         scene = 10;
//     }
//     if (key == 't' || key == 'T') {
//         // タスク画面
//         if (scene ==  0) {
//             scene = 11;
//         }
//     }
//     if (key == ENTER || key == RETURN) {
//         if (serihu1 ==  true) {
//             serihu1 = false;
//             serihu2 = true;
//         }
//         else if (serihu2 ==  true) {
//             serihu2 = false;
//             serihu3 = true;
//         }
//         else if (serihu3 ==  true) {
//             serihu3 = false;
//             serihu1 = true;
//         }
//     }
// }

// void keyPressed() {
// if (key == ENTER || key == RETURN) {
//     if (scene == 0) {

//     }
// }

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
// void showRecords() {
//     image(recordBack, 0, 0, width, height);
//     fill(0);
//     textSize(12);

//     //String[] records = loadStrings("task_records.txt");
//     //if(records!= null) {
//     //int y = 20;
//     //for (String record : records) {
//     //text(record, 20, y);
//     //y += 20;
//     //   }
// // } else {
//     //text("No records found.", 20, 20);
// // }

//     textSize(16);
//     text("Press 'B' to go back", 20, height - 30);
// }