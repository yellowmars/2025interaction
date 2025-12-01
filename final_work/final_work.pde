// 簡單躲彈幕遊戲
// 上下左右控制主角，碰到子彈就扣一條命

// 玩家相關
float px, py;        // 玩家位置
float playerR = 15;  // 玩家半徑
float playerSpeed = 4;

// 按鍵狀態
boolean up, down, left, right;

// 子彈列表
ArrayList<Bullet> bullets;

// 遊戲狀態
boolean gameOver = false;
int score = 0;
int lives = 3;  // 玩家生命數
float m=0,dm=0.05;

void setup() {
  size(600, 600);
  px = width/2;
  py = height/2;
  bullets = new ArrayList<Bullet>();
  textAlign(CENTER, CENTER);
  textSize(24);
}

void draw() {
  background(0);
  
  // 顯示分數與生命數
  fill(255);
  text("Score: " + score, width/2, 30);
  text("Lives: " + lives, width/2, 60);
  
  if (!gameOver) {
    // 處理玩家移動
    handlePlayerMove();
    
    // 隨機產生子彈（數字越小彈越多）
    if (frameCount % 8 == 0) {
      spawnBullet();
      score++;  // 撐越久分數越高
    }
    
    // 更新與顯示子彈
    for (int i = bullets.size()-1; i >= 0; i--) {
      Bullet b = bullets.get(i);
      b.update();
      b.display();
      
      // 碰撞判定
      float d = dist(px, py, b.x, b.y);
      if (d < playerR + b.r) {
        lives--;  // 扣一條命
        bullets.remove(i);  // 撞到就移除子彈
        if (lives <= 0) {
          gameOver = true;
        }
      }
      
      // 超出畫面太遠就刪掉
      if (b.offScreen()) {
        bullets.remove(i);
      }
    }
    
    // 畫玩家
    fill(0, 200, 255);
    noStroke();
    arc(px,py,30,30,+m,PI*2-m);
    if(m>=1|| m<0) dm=-dm;
  m+=dm;
  } else {
    // Game Over 畫面
    fill(255, 50, 50);
    text("GAME OVER", width/2, height/2 - 20);
    fill(255);
    text("Final Score: " + score, width/2, height/2 + 20);
    text("trie again R ", width/2, height/2 + 60);
  }
}

// 處理玩家移動
void handlePlayerMove() {
  if (up)    py -= playerSpeed;
  if (down)  py += playerSpeed;
  if (left)  px -= playerSpeed;
  if (right) px += playerSpeed;
  
  // 不要跑出畫面
  px = constrain(px, playerR, width - playerR);
  py = constrain(py, playerR, height - playerR);
}

// 產生一顆從四周飛進來的子彈
void spawnBullet() {
  int side = int(random(4)); // 0:上 1:右 2:下 3:左
  float bx=0, by=0;
  float vx=0, vy=0;
  float br = random(6, 12); // 子彈半徑
  float speed = random(2, 1.5); // 子彈速度
  
  if (side == 0) {          // 上方
    bx = random(width);
    by = -20;
    vx = random(-1, 1);
    vy = speed;
  } else if (side == 1) {   // 右邊
    bx = width + 20;
    by = random(height);
    vx = -speed;
    vy = random(-1, 1);
  } else if (side == 2) {   // 下方
    bx = random(width);
    by = height + 20;
    vx = random(-1, 1);
    vy = -speed;
  } else if (side == 3) {   // 左邊
    bx = -20;
    by = random(height);
    vx = speed;
    vy = random(-1, 1);
  }
  
  bullets.add(new Bullet(bx, by, vx, vy, br));
}

// 鍵盤按下
void keyPressed() {
  if (keyCode == UP)    up = true;
  if (keyCode == DOWN)  down= true;
  if (keyCode == LEFT)  left= true;
  if (keyCode == RIGHT) right = true;
  
  // R 重新開始
  if (gameOver && (key == 'r' || key == 'R')) {
    restartGame();
  }
}

// 鍵盤放開
void keyReleased() {
  if (keyCode == UP)    up = false;
  if (keyCode == DOWN)  down = false;
  if (keyCode == LEFT)  left = false;
  if (keyCode == RIGHT) right = false;
}

// 重新開始遊戲
void restartGame() {
  gameOver = false;
  score = 0;
  lives = 3;  // 重新設置生命數
  px = width/2;
  py = height/2;
  bullets.clear();
}

// 子彈類別
class Bullet {
  float x, y;
  float vx, vy;
  float r;
  
  Bullet(float x, float y, float vx, float vy, float r) {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.r = r;
  }
  
  void update() {
    x += vx;
    y += vy;
  }
  
  void display() {
    fill(255, 200, 0);
    noStroke();
    ellipse(x, y, r*2, r*2);
  }
  
  boolean offScreen() {
    return (x < -50 || x > width+50 || y < -50 || y > height+50);
  }
}
