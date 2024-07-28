<p align="center">
 <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/8bb8b7e9-b76a-4005-a784-5067c5234a8d" alt="Halloween" style="width:100%;">
</p>


## Table of Contents
- [Introduction](#introduction)
- [Requirements](#requirements)
- [Design](#design)
- [Implementation](#implementation)
- [Evaluation](#evaluation)
- [Process](#process)
- [Conclusion](#conclusion)

# Introduction 
Introduction (5%  ~200 words)
Describe what makes the new level in your game novel.

The previous game was a 2D platformer with two levels, easy and hard. Like other similar 2D platformers, it allowed the character to jump through obstacles, avoid enemies and collect points. I added a medium difficulty map based on the previous game and added a new feature: the teleport stone. When the player touches the teleport stone, they will be teleported to a specified location for a period of time before being teleported back to the starting point, or they will be teleported to a specified location but not teleported back. The specific function of the teleport stone depends on whether it is the first or second time the teleport stone is touched. The first time the teleport stone is touched, the player will be teleported to a specified location for a period of time before being teleported back to the starting point. The second time the teleport stone is touched, the player will be teleported to a specified location but will not teleport back. By introducing medium difficulty, players have the opportunity to practice and improve their skills before entering more difficult levels. The teleport stone in this level adds a new mechanic that players need to master to achieve a smooth transition from easy levels to difficult levels. With the teleport stone, players can enjoy a more interesting and varied game.
//todo after pre 这里准备加演示功能的视频2个


<br>
<p align="center">
![CLASS DIAGRAM](data/Images/GameDemoStone1.mp4)
 <p align="center">Teleport stone firstly touch </p>
 
 <br>
 
<p align="center">
![CLASS DIAGRAM](data/Images/GameDemoStone1.mp4)
 <p align="center">Teleport stone secondly touch </p>



<br>

# Requirements
//done before pre
Requirements (15% ~300 words)
List three new user stories associated with the new level. Explain why you decided to develop the new level.

**User Case Story**

- Player Navigation Using Teleport Stones
- Strategic Gameplay Using Teleport Stones
- Progressive Difficulty in Medium Difficulty


**User Story**
<br>
>As a player,  
>I want to use Teleport Stones to quickly navigate to different areas of the mid-level map,  
>so that I can explore new areas more efficiently and collect stashes or power-ups.<br>Rationale: This user story highlights the need for better navigation in the >game, making it more engaging by allowing players to explore new areas faster and more >efficiently. The Teleport Stone feature adds a strategic element to the game, >making exploration more rewarding and exciting.
<br>

>As a player,  
>I want Teleport Stones to provide temporary repositioning to avoid powerful enemies or obstacles,  
>so that I can plan my moves better and have a higher chance of surviving challenging sections.<br>Rationale: This user story highlights the tactical use of Teleport >Stones to avoid difficult sections in the game. With temporary repositioning, players can bypass >powerful enemies or obstacles, adding a layer of strategy to the >gameplay. This makes the mid-level more interesting and challenging.

<br>

>As a player,  
>I would like the difficulty of Medium Difficulty to increase gradually with the introduction of Teleport Stones,  
>so that I can improve my skills and prepare for the harder levels.<br>Rationale: This user story addresses the need for a balanced progression in the game's >difficulty. By introducing Medium Difficulty, players have a chance to practice and improve their skills before moving on to the harder levels. The Teleport Stone in >this level adds a new mechanic that players need to master, providing a smooth transition from easy to hard levels.

<br>

**Reasons for Developing a New Level**
<br>
<br>
There are several motivations for developing a Medium Difficulty level with a Teleport Stone:

- Balanced Difficulty Progression: <br>
Introducing Medium Difficulty provides players with a smoother difficulty curve, allowing them to gradually build their skills and adapt to new game mechanics before facing more challenging levels.

- Increase Gameplay Variety: <br>
Teleport Stones add a unique feature that differentiates Medium Difficulty from Easy and Hard levels. This variety keeps the gameplay fresh and engaging, preventing it from becoming monotonous.

- Increase Engagement and Replayability: <br>
By adding new elements like Teleport Stones, players are encouraged to try different strategies and explore the game world more thoroughly. This not only increases player engagement, but also improves the replayability of the game as players come back to uncover all the secrets and refine their gameplay.

- Strategic Depth: <br>
The Teleport Stone introduces a strategic element to the game, requiring players to carefully consider when and where to use it. This depth enhances the overall game experience and makes it more rewarding for players who enjoy tactical games.
 <br>
In summary, mid-level levels with Teleport Stones were developed to create a more balanced, engaging, and strategic game experience that encourages players to explore, strategize, and improve their skills.



# Design

Design (15% ~350 words)
Explain what has changed in the system architecture, as a result of developing the new level. Show the changes in the class diagrams and behavioural diagrams.

**Paper Prototyping**

<p align="center">
![CLASS DIAGRAM](data/Images/GameDemoStone1.mp4)
 <p align="center">Teleport stone firstly touch </p>
**System Architecture**


**CLASS DIAGRAM**

![CLASS DIAGRAM](data/Images/classdiagram.png)

// 加入 behavioural diagrams.

**Changes**

as a result of developing the new level：//todo
To develop the new level, the system architecture has undergone the following changes:

*New Class：*

Stone Class:
Inherits from AnimatedSprite and represents stones in the new level.
Added constructor: Initializes stone objects and loads their animation frames.
Added updateAnimation method: Updates the animation frames of the stone.
Modified and New Methods

*New Methods：*

displayStone: Displays stones on the screen and updates their animation frames.
stoneCollisions: Detects collisions between the player and stones, and teleports the player upon collision.
startTeleportBackTimer: Starts a timer to teleport the player back to the original position after a specified delay.
teleportPlayer: Teleports the player to a new specified position and starts the return timer.
teleportPlayerBack: Teleports the player back to the original position.

*Modified Existing Classes：*

Player Class:
Added attribute originalPosition: Stores the player's original position.
Added attribute isTeleported: Indicates whether the player has been teleported.
Added attribute stoneCollisionCount: Tracks the number of collisions between the player and stones.
Added attribute teleportEndTime: Records the end time of the teleport.
Added methods startTeleportTimer and getRemainingTeleportTime: Manages the teleport timing.
New Global Variables
In the Main Class:
ArrayList<Sprite> Stones: Stores all stone objects.

*New Game Logic：*

Calling displayStone in the draw Method: Ensures that stone objects are displayed and updated in the main drawing loop.
Calling stoneCollisions in the collideAll Method: Adds handling of collisions between the player and stones in the collision detection logic.

**Summary of System Architecture Changes**

New Stone Class: Introduced a new game element (stone) and created a dedicated class to handle its behavior and animation.
New Collision Handling Logic: Added logic to teleport the player when colliding with stones and return the player to the original position after a certain time.
Extended Player Class: Added attributes and methods related to teleportation to support the new game mechanic.
New Methods for Displaying and Updating Stones: Ensured proper display and animation updates for stone objects in the game.
These changes have enabled the new level to be implemented, introducing new challenges and interactions that enhance the depth and playability of the game.




# Implementation

//todo after pre
Implementation (15% ~350 words)
Describe implementation of the new level in your game, in particular highlighting  two areas of challengein developing this new level in your game.

  

### Challenge 1

#### Introduction of New Game Elements and Animations

Description: The new level introduced a new game element, the stone, which has animations that need to be dynamically displayed and updated in the game.

#### Specific Issues:

Loading and managing animation frames for the stone to ensure smooth animation playback.
Correctly displaying and updating the state of stones in the main game loop.

### Solution 1

Solution:Create a Stone class inheriting from AnimatedSprite and load animation frames in its constructor.
In the displayStone method, iterate over all stone objects and call their display and update methods.

### Challenge 2

#### Collision Handling and Teleportation Logic

Description: In the new level, when the player collides with a stone, a teleportation logic is triggered. This means the player is teleported to a new position and then returns to the original position after a certain delay. Implementing this feature required precise collision detection and managing multiple states and timers.

#### Specific Issues:

Ensuring accurate collision detection under various conditions.
Managing multiple states (e.g., whether the player is teleported, original position, number of collisions).
Accurately controlling the delay timer to teleport the player back to the original position, avoiding multiple teleportations or timing errors.


### Solution 2

Solution:Use the checkCollisionList method to detect collisions and call the teleportPlayer method upon collision.
Add relevant attributes (such as isTeleported and originalPosition) in the player class to manage teleportation state.
Use java.util.Timer to handle the delay logic for returning to the original position.


# Evaluation

//todo after pre
Evaluation (15% ~300 words)
One qualitative or one quantitative evaluation of your choice.
A description of how the new code was tested.
### Testing of the new code

To ensure the functionality and stability of the new code, I performed the following tests:

**Functional testing**
<br>
Purpose: Ensure that the new level and all its features work properly.
Method: Manual testing includes the complete process of player collision with stones, teleportation logic, and returning to the original position. Automated testing uses simulated player input to verify game behavior.
Result: All functional tests passed, confirming that the logic and interaction of the new level are as expected.

**Regression testing**<br>
Purpose: Ensure that the introduction of new code does not break existing functionality.
Method: Rerun all existing test cases after introducing the new level, especially those involving player movement, collision detection, and game state management.
Result: All regression tests passed, confirming that the new code did not introduce new problems.

**Performance testing**<br>
Purpose: Verify the performance of the new level and ensure that the frame rate and memory usage are within a reasonable range.
Method: Run the game for a long time, especially scenes with multiple animated stones and background music, and monitor the frame rate and memory usage.
Result: The game performance remains stable after the introduction of the new level, and the frame rate and memory usage are as expected.

<br>

**Conclusion**<br>
Through the above evaluation and testing, the smooth integration of the new level was ensured, and its impact on the overall game performance was verified to be within an acceptable range, providing players with a smooth and stable gaming experience.



### Think Aloud (Raw) ###

# Process

//todo before pre
Process (15% ~200 words)
Reflect on your work process, in particular:
explaining what tools you used and their strengths and limitations

<br> 

//todo after pre
how different it would have been working in a team rather than working on your own? 
how you could have improved your performance in the previous team work. 

# Conclusion
//todo after pre
Conclusion (10% ~200 words)
Describe what lessons you have learnt about software engineering by completing this individual work? 
Reflect on the challenges you faced in completing this work. 
Describe how you could develop the software further in the future.




