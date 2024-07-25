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
这里准备加演示功能的视频2个


<br>
<p align="center">
 <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/aef13f50-98de-417a-aa9f-402e4b209f9c" alt="Enemies Chase Mechanics" style="width:100%; height:350px;">
 <p align="center">Teleport stone first touch </p>
</p>

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/bad4b69e-b302-44f0-8c62-0d49154a1dfe" alt="Flying Mechanics" style="width:100%; height:350px;">
  <p align="center">Teleport stone second touch</p>
</p>

<br>
<br>





# Requirements
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


**System Architecture**


**CLASS DIAGRAM**

- <b>Game Class</b>: Game Class corresponds to the above-mentioned Game Manager in which it oversees overall flow of the game. It has access to all the classes and variables relevant to the game then renders appropriate screen in accordance to the user actions. 



# Implementation

Implementation (15% ~350 words)
Describe implementation of the new level in your game, in particular highlighting  two areas of challengein developing this new level in your game.

  

### Challenge 1
### Solution 1



# Evaluation

Evaluation (15% ~300 words)
One qualitative or one quantitative evaluation of your choice.
A description of how the new code was tested.



### Think Aloud (Raw) ###
 <p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/834c2a7c-f040-4596-b609-e0e544308b8d" style="width:70%; height:70%;">
</p>

### Think Aloud (Categorised) ###
 <p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/01ff64e1-ecc4-4ff7-997c-53846dd89a2f" style="width:70%; height:70%;">
</p>



### Think Aloud (Raw) ###

### EASY ###
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/fc6d0baf-a564-4f2a-90a0-286c0132a223" style="width:70%; height:70%;">
</p>

### HARD ### 
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/7483c75f-0329-415f-8f36-36d560dd45c4" style="width:70%; height:70%;">
</p>

### Think Aloud (Categorised) ### 
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/b6d5d06d-26c2-466c-b38c-6948bde7faf4" style="width:70%; height:70%;">
</p>
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/c4b24198-b774-4a0e-98df-ee1967150248" style="width:70%; height:70%;">
</p>

<br>

# Process

Process (15% ~200 words)
Reflect on your work process, in particular:
explaining what tools you used and their strengths and limitations
how different it would have been working in a team rather than working on your own? 
how you could have improved your performance in the previous team work. 

## Introduction

**Challenges** during this phase**:**

- Varied coding skills and GitHub familiarity among team members.

**Solutions:**



# Conclusion
Conclusion (10% ~200 words)
Describe what lessons you have learnt about software engineering by completing this individual work? 
Reflect on the challenges you faced in completing this work. 
Describe how you could develop the software further in the future.




