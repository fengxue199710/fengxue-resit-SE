public class Player extends AnimatedSprite {

    int lives;
    boolean onGround, inPlace;
    PImage[] stand; 
    PImage[] jump;
    PImage[] walk;
    PVector originalPosition;  
    boolean isTeleported = false; 
    int stoneCollisionCount = 0;
     long teleportEndTime = 0;  
    
    public Player (PImage img, int size_x, int size_y, float x, float y) {
        super(img, size_x,size_y,x,y);
        lives = PlayerSprite_LIVES;
        facing = RIGHT_FACING;
        onGround = true;
        inPlace = true;
        stand = new PImage[8];
        jump = new PImage[3];
        walk = new PImage[4];
        currentImg = stand;
        loadFrames(stand, "./data/Player/stand");
        loadFrames(walk, "./data/Player/walk");
        loadFrames(jump, "./data/Player/jump");
        originalPosition = new PVector(x, y); 
      
    }
    public void startTeleportTimer(long duration) {
        this.teleportEndTime = millis() + duration;
    }

    public long getRemainingTeleportTime() {
        long remainingTime = teleportEndTime - millis();
        return remainingTime > 0 ? remainingTime : 0;
    }
 public void resetTeleport() {
        this.isTeleported = false;  // 用于重置传送状态
    }
    @Override
    public void updateAnimation(){
        onGround = isOnGround(this, gw.platforms);
        if (change_x == 0 && change_y == 0) {
            inPlace = true;
        } else {
            inPlace = false;
        }
        super.updateAnimation();
    }

    @Override
    public void selectImg(){
            if (inPlace) {
                currentImg = stand;
            } else if (!onGround) {
                currentImg = jump;
            } else {
                currentImg = walk;
            } 
    }

}
