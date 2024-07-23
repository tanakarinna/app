void keyPressed() {
    if (key == '1') {
        if (scene ==  11) {
            scene = 1;
            // selectedTask = key - '1';// タスクを選択
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
            // 
        }
        if (kuuhuku == true) {
            kuuhuku = false;
            piimanEat = true;
        }
    } 
    if (key == '2') {
        if (scene ==  11) {
            scene = 2;
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
        }
        if (kuuhuku == true) {
            kuuhuku = false;
            tomatoEat = true;
        }
    }
    if (key == '3') {
        if (scene ==  11) {
            scene = 3;
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
        }
        if (kuuhuku == true) {
            kuuhuku = false;
            nasubiEat = true;
        }
    } 
    if (key == '4') {
        if (scene ==  11) {
            scene = 4;
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
        }
    } 
    if (key == '5') {
        if (scene ==  11) {
            scene = 5;
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
        }
    } 
    if (key == '6') {
        if (scene ==  11) {
            scene = 6;
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
        }
    } 
    if (key == '7') {
        if (scene ==  11) {
            scene = 7;
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
        }
    } 
    if (key == '8') {
        if (scene ==  11) {
            scene = 8;
            taskSelected = true;
            timerRunning = true;
            startTime = millis();
        }
    } 
    if (key ==  's' || key ==  'S') {
        // println("sが押されています");
        if (timerRunning == true) {
            timerRunning = false;
            stopTime = millis();
            // scene = 0;
        } 
        // println(timerRunning);
    }
    if (key == 'r' ||  key == 'R') {
        if (scene == 0) {
            //記録画面
            scene = 9;
        }
    }
    if (key == 'b' || key == 'B') {
        // ホーム選択画面に戻る
        scene = 0;
    }
    if (key == 'f' || key == 'F') {
        if (scene == 0) {
            // 羊画面
            scene = 10;
        }
    }
    if (key == 't' || key == 'T') {
        // タスク画面
        if (scene ==  0) {
            scene = 11;
        }
    }
    if (key == 'o' || key == 'O') {
        // タスク画面
        if (piimanEat == true || tomatoEat == true || nasubiEat == true) {
            piimanEat = false;
            tomatoEat = false;
            nasubiEat = false;
            kuuhuku = true;
        }
    }
    if (key == 'k' || key == 'K') {
        // タスク画面
        if (scene ==  1) {
            if (timerRunning == false) {
                String[] list = {"a", "b", "c", "d", "e"}; //文字列の指定
                saveStrings("/data/history.txt", list); //「text.txt」という名前で保存
                // println("seikou");
            }
        }
    }
    
    if (key == ENTER || key == RETURN) {
        if (serihu1 ==  true) {
            serihu1 = false;
            serihu2 = true;
        }
        else if (serihu2 ==  true) {
            serihu2 = false;
            serihu3 = true;
        }
        else if (serihu3 ==  true) {
            serihu3 = false;
            serihu1 = true;
        } else if (aisatu == true) {
            aisatu = false;
            serihu1 = true;
        }
        if (task_serihu1 == true) {
            task_serihu1 = false;
            task_serihu2 = true;
        }
        else if (task_serihu2 == true) {
            task_serihu2 = false;
            task_serihu1 = true;
        }
    }
}
