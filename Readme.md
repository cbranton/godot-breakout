## Layers 

We have set up layers in Project Settings -> Layer names -> 2D Physics to help optimize collision detection.

Layer 1. field
Layer 2. player
Layer 3. ball
Layer 4. blocks

We can then set layer masks to determine which objects are able to collide with which others.


## Example Enhancements

1. The player (paddle) is hard-coded into the main scene. The PaddleStartPosition component is never used. Change this to generate the player dynamically at a semi-random spot on the X axis. It should stay at the same Y coordinate.

2. Paddle movement is directly mapped to keyboard input. Change to use a CharacterBody2D to control the paddle. (You can see an example at approx. 14 minutes into the video tutorial in the References setion more information at https://docs.godotengine.org/en/stable/tutorials/physics/using_character_body_2d.html.)

3. Randomize initial position and movement of the ball.

## References

How to Code a Breakout Game with Godot. https://www.youtube.com/watch?v=sCZGiC7NdUQ 