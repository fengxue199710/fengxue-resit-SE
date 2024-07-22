public class Stone extends AnimatedSprite {
    public Stone(PImage image, int size_x, int size_y, float x, float y) {
        super(image, size_x, size_y, x, y);
        stand = new PImage[6];  // 如果石头没有动画，只需要一帧图像
        this.loadFrames(this.stand, "./data/Stone/Stone"); 
  }
  public void updateAnimation() {
        frame++;
        if (frame % 8 == 0) {
            selectImg();
            moveToNextImg();
        }
    }
void displayStone(){
  for(Sprite s: Stones){
     AnimatedSprite stone = (AnimatedSprite)s;
     stone.display();
     stone.updateAnimation();
     solveCollisions(stone,gw.platforms);
  }
}
void stoneCollisions(Sprite player, ArrayList<Sprite> stones) {
    ArrayList<Sprite> collisionList = checkCollisionList(player, stones);
    if (collisionList.size() > 0) {
        for (Sprite s : collisionList) {
           // teleportPlayer(player, new PVector(500, 200));  // 假设传送到的坐标是 (500, 200)
          //  startTeleportBackTimer(player, 5000);  // 5秒后返回
            stones.remove(s);
        }
    }
}
/*
void teleportPlayer(Sprite player, PVector newPosition) {
    player.originalPosition = new PVector(player.getCenter_x(), player.getCenter_y()); // 保存原始位置
    player.setCenter_x(newPosition.x);
    player.setCenter_y(newPosition.y);
}

void startTeleportBackTimer(Sprite player, int delay) {
    new java.util.Timer().schedule(
        new java.util.TimerTask() {
            @Override
            public void run() {
                teleportPlayerBack(player);
            }
        }, 
        delay
    );
}

void teleportPlayerBack(Sprite player) {
    player.setCenter_x(player.originalPosition.x);
    player.setCenter_y(player.originalPosition.y);
}
*/
}

   
