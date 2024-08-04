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

The previous game was a 2D platformer with two levels, easy and hard. Like other similar 2D platformers, it allowed the character to jump through obstacles, avoid enemies and collect points. I added a medium difficulty map based on the previous game and added a new feature: **the teleport stone.** 
<br>
<br>
*Description:* When the player touches the teleport stone, they will be teleported to a specified location for a period of time before being teleported back to the starting point, or they will be teleported to a specified location but not teleported back.
<br>
<br>
*Indetail:* The specific function of the teleport stone depends on whether it is the first or second time the teleport stone is touched. The first time the teleport stone is touched, the player will be teleported to a specified location for a period of time before being teleported back to the starting point. The second time the teleport stone is touched, the player will be teleported to a specified location but will not teleport back.
<br>
<br>
By introducing medium difficulty, players have the opportunity to practice and improve their skills before entering more difficult levels. The teleport stone in this level adds a new mechanic that players need to master to achieve a smooth transition from easy levels to difficult levels. With the teleport stone, players can enjoy a more interesting and varied game.
<br>
<br>

<p align="center">
  <img src="data/Images/GameDemo1.gif"  alt="GameDemoStone1" style="width:60%; height:250px;">
  <p align="center">GameDemoStone1 </p>
</p>

<p align="center">
  <img src="data/Images/GameDemo2.gif" alt="GameDemoStone2" style="width:60%; height:250px;">
 <p align="center">GameDemoStone2 </p>
</p>

<br>

<br>

# Requirements

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
The design phase of the project was critical in laying a solid foundation for development. It involved conceptualizing the new game level, defining its mechanics, and ensuring that the new features integrated seamlessly with the existing game structure.
<br>
<br>

## Paper Prototyping

Paper prototyping played a significant role in the initial design process. By sketching out the game levels and the new teleport stone mechanic on paper, I was able to quickly iterate on ideas and gather feedback. This low-fidelity approach allowed for rapid visualization of concepts and early identification of potential design issues. The simplicity of paper prototyping made it an effective tool for brainstorming and refining the overall structure and flow of the new level.
<br>
The ability to easily adjust and experiment with different designs on paper ensured that the final implementation was well thought out and aligned with the intended gameplay experience.
<br>
<p align="center">
  <img src="data/Images/paperprototyping1.gif"  alt="paperprototypingStone1" style="width:60%; height:250px;">
  <p align="center">paperprototyingStone1 </p>
</p>

<p align="center">
  <img src="data/Images/paperprototying2.gif"  alt="paperprototypingStone2" style="width:60%; height:250px;">
  <p align="center">paperprototyingStone2 </p>
</p>
<br>
<br>

## System Architecture

**CLASS DIAGRAM**

![CLASS DIAGRAM](data/Images/classdiagram.png)

**Changes**

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

*New Stone Class:* Introduced a new game element (stone) and created a dedicated class to handle its behavior and animation.
New Collision Handling Logic: Added logic to teleport the player when colliding with stones and return the player to the original position after a certain time.
*Extended Player Class:* Added attributes and methods related to teleportation to support the new game mechanic.
New Methods for Displaying and Updating Stones: Ensured proper display and animation updates for stone objects in the game.
These changes have enabled the new level to be implemented, introducing new challenges and interactions that enhance the depth and playability of the game.


# Implementation

The implementation of the new level in our game involved several critical steps, especially focusing on the introduction of new game elements and the addition of complex interaction mechanics. Below are the descriptions of two major challenges faced during the development of this new level, along with their respective solutions.
  

### Challenge 1

#### Introduction of New Game Elements and Animations

-Description:
<br>
The new level introduced a new game element, the stone, which has animations that need to be dynamically displayed and updated in the game.

-Specific Issues:<br>
Loading and managing animation frames for the stone to ensure smooth animation playback.
Correctly displaying and updating the state of stones in the main game loop.

### Solution 1

Solution:<br>Create a Stone class inheriting from AnimatedSprite and load animation frames in its constructor.
In the displayStone method, iterate over all stone objects and call their display and update methods.

### Challenge 2

#### Collision Handling and Teleportation Logic

-Description: <br>
In the new level, when the player collides with a stone, a teleportation logic is triggered. This means the player is teleported to a new position and then returns to the original position after a certain delay. Implementing this feature required precise collision detection and managing multiple states and timers.

-Specific Issues:<br>
Ensuring accurate collision detection under various conditions.
Managing multiple states (e.g., whether the player is teleported, original position, number of collisions).
Accurately controlling the delay timer to teleport the player back to the original position, avoiding multiple teleportations or timing errors.


### Solution 2

Solution:<br>Use the checkCollisionList method to detect collisions and call the teleportPlayer method upon collision.
Add relevant attributes (such as isTeleported and originalPosition) in the player class to manage teleportation state.
Use java.util.Timer to handle the delay logic for returning to the original position.


# Evaluation


## One qualitative or one quantitative evaluation

Evaluation is fundamental in software development as it enables developers to analyze and refine the software to meet users’ requirements effectively. To ensure that this project meets users’ requirements, I chose to conduct a qualitative evaluation using the Think Aloud method.

### Think Aloud Evaluation
The Think Aloud method requires users to verbalize their thoughts and impressions while performing specified tasks. This approach provides direct insights into the user experience, highlighting potential issues and areas for improvement.

### Methodology:

**-Participants:** I recruited four participants with varying levels of gaming experience to perform the Think Aloud evaluation.<br>

**-Tasks:** Participants were asked to play the new level, focusing particularly on collecting pumpkins and navigating through the level.<br>

**-Procedure:** During gameplay, participants were instructed to verbalize their thoughts, describe their actions, and express any confusion or difficulties they encountered. A facilitator was present to prompt participants if they became silent, ensuring continuous verbal feedback.<br>

### Data Collection and Categorization:<br>

**-Raw Data:** <br>The verbal feedback from participants was recorded and transcribed.<br>
**-Categorization:** The transcribed data was then categorized into four main categories: “Nothing to be addressed,” “Issues to be addressed,” “Issues to be discussed,” and “Uncertain.”<br>
**-Nothing to be addressed:** Feedback indicating positive aspects or areas with no issues.<br>
**-Issues to be addressed:** Clear issues or bugs that need immediate attention and fixing.<br>
**-Issues to be discussed:** Ambiguous feedback that could either be a bug or an intended feature, requiring further discussion among the development team.<br>
**-Uncertain:** Feedback that was unclear or not directly actionable.<br>

### Results: <br>
**-Positive Feedback:** <br>Participants appreciated the new animations and the teleportation mechanics, noting that these elements added depth and excitement to the gameplay.<br>
**-Issues Identified:** <br>
Collision Detection: Some participants reported inconsistent collision detection with the stones, leading to unexpected teleportations.<br>
Difficulty Balance: A few participants found the level either too easy or too difficult, indicating a need to reassess the difficulty settings.<br>
Teleportation Timing: Some participants were unsure when they would be teleported back to the original position, suggesting the need for a teleportation timer.<br>
Visual Clarity: <br>There were comments about certain visual elements being unclear or hard to distinguish, affecting the overall user experience.<br>

### Improvements: <br>

Based on the Think Aloud evaluation, we made several adjustments:<br>
- Refined the collision detection algorithm to ensure consistent interactions with the stones.<br>
- Adjusted the difficulty settings to provide a more balanced experience for players of different skill levels.<br>
- Enhanced the visual clarity of key elements to improve the overall user experience.<br>
- Added a teleportation timer to clearly indicate when the player would be teleported back, improving user awareness and reducing confusion.<br>

By incorporating feedback from the Think Aloud evaluation, we were able to identify and address critical issues, leading to a more polished and user-friendly game.<br>

## Testing of the new code

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





# Process
Reflecting on my work process, I realized the importance of using a structured approach to manage the development of the new game level. By leveraging various tools and methodologies, I was able to maintain organization and efficiency throughout the project. Below, I discuss the tools I used, their strengths, and their limitations. Additionally, I compare working in a team versus working alone, and suggest improvements for better team performance based on past experiences.
## Tools Used
### Agile Methodology:
*Strengths:* Agile provided a flexible framework that allowed for iterative development and continuous feedback. This adaptability was crucial for making adjustments based on user feedback and new ideas.
<br>
*Limitations:* Agile requires constant communication and regular updates, which can be challenging to maintain when working alone.
### Sprint Planning:
*Strengths:* Sprint planning helped break down the project into manageable tasks and set clear goals for each development cycle. This approach kept the project organized and on track.
<br>
*Limitations:* Estimating time for tasks can be tricky, especially when unexpected issues arise, potentially disrupting the planned sprint.
### Kanban Board:
*Strengths:* The Kanban board provided a visual representation of tasks, their statuses, and progress. It was useful for tracking work and ensuring that nothing was overlooked.
<br>
*Limitations:* Maintaining the board and updating task statuses can become time-consuming, and it relies heavily on discipline to keep it current.
### Paper Prototyping:
*Strengths:* Paper prototyping allowed for quick and easy visualization of ideas. It was an effective tool for brainstorming and initial design phases.
<br>
*Limitations:* Paper prototypes lack interactivity and can be limited in demonstrating complex interactions and animations.
### Giphy and EZGIF:
*Strengths:* These tools were useful for creating and editing animations and GIFs to demonstrate game features and mechanics.
<br>
*Limitations:* They offer limited customization and might not support all advanced editing features needed for complex animations.
## Teamwork vs. Solo Work
### Working in a Team:
*Strengths:* Collaborating with a team can bring diverse perspectives and skills, potentially leading to more innovative solutions. Tasks can be distributed based on individual strengths, increasing efficiency and productivity.
<br>
*Limitations:* Coordinating schedules and maintaining consistent communication can be challenging. There is also a potential for conflicts or differences in vision and approach.
### Working Alone:
*Strengths:* Working solo allows for complete control over the project and the ability to make quick decisions without the need for consensus. It also eliminates the need for constant coordination with others.
<br>
*Limitations:* The workload can be overwhelming, and the lack of feedback from team members can lead to missed opportunities for improvement. It can also be challenging to stay motivated and disciplined without the accountability of a team.
## Improving Team Performance
*In previous team work, performance could have been improved by:*
<br>
<br>
**Enhanced Communication:** Regular and structured communication channels, such as daily stand-ups or weekly meetings, could have ensured everyone was on the same page and issues were addressed promptly.
<br>
**Clearer Role Definition:** Defining roles and responsibilities more clearly would have helped in preventing overlap and ensuring that each team member focused on their strengths.
<br>
**More Frequent Feedback:** Implementing more frequent feedback loops and reviews could have identified issues earlier and allowed for quicker course corrections.
<br>
**Better Use of Tools:** Utilizing collaboration tools more effectively, such as shared Kanban boards or project management software, would have streamlined task management and progress tracking.

# Conclusion

Completing this individual work has been an enlightening experience in software engineering, teaching me valuable lessons about project management, problem-solving, and the importance of iterative development. One of the key lessons I learned is the significance of planning and structuring a project from the outset. Using methodologies like Agile and tools like Kanban boards allowed me to break down the project into manageable tasks, which helped in maintaining a clear focus and tracking progress efficiently.
<br>
<br>
Reflecting on the challenges faced, one of the most significant was handling the complexity of adding new game mechanics, such as the teleport stone. Ensuring smooth integration of new features without breaking existing functionality required careful planning, extensive testing, and iterative refinement. Debugging issues related to collision detection and timing further highlighted the importance of thorough testing and validation. Another challenge was maintaining motivation and discipline while working alone, which underscored the value of regular self-assessment and progress tracking.
<br>
<br>
To develop the software further in the future, I would consider several enhancements. First, incorporating more advanced animations and visual effects would enhance the user experience. Second, expanding the level design to include more interactive elements and varied environments could increase engagement and replayability. Third, implementing a more sophisticated AI for in-game characters could add depth and complexity to the gameplay. Finally, enhancing the multiplayer functionality to allow cooperative or competitive play would broaden the game's appeal and provide a richer gaming experience.
<br>
<br>
Overall, this project has reinforced the importance of adaptability, continuous learning, and the iterative nature of software development. The experience gained and lessons learned will undoubtedly contribute to my future endeavors in software engineering.




