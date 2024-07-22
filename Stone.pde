public class Stone extends AnimatedSprite {
    public Stone(PImage image, int size_x, int size_y, float x, float y) {
        super(image, size_x, size_y, x, y);
        stand = new PImage[6]; 
        this.loadFrames(this.stand, "./data/Stone/Stone"); 
  }
  public void updateAnimation() {
        frame++;
        if (frame % 8 == 0) {
            selectImg();
            moveToNextImg();
        }
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
            teleportPlayer(player, new PVector(player.getCenter_x()+500, player.getCenter_y()));  // 传送到指定坐标
            stones.remove(s);
            break;  // 处理一个就足够，防止重复处理
        }
    }
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

void teleportPlayer(Sprite player, PVector newPosition) {
    if (player instanceof Player) {
        Player p = (Player) player;
        if (!p.isTeleported) {  // 只有未处于传送状态时才处理
            p.originalPosition = new PVector(p.getCenter_x(), p.getCenter_y());
            p.setCenter_x(newPosition.x);
            p.setCenter_y(newPosition.y );
            p.isTeleported = true;
            p.stoneCollisionCount++;  // 碰撞次数增加

            // 只在第一次碰撞时启动返回计时器
            if (p.stoneCollisionCount == 1) {
                startTeleportBackTimer(p, 5000);
            }
        }
    }
}




void teleportPlayerBack(Sprite player) {
    if (player instanceof Player) {
        Player p = (Player) player;
        // 只在第一次传送后返回
        if (p.originalPosition != null && p.stoneCollisionCount == 1) {
            p.setCenter_x(p.originalPosition.x);
            p.setCenter_y(p.originalPosition.y);
            p.originalPosition = null; // 清除保存的原始位置
            p.isTeleported = false;    // 重置传送状态
           // p.stoneCollisionCount = 0; // 重置碰撞次数
        }
    }
}









   
