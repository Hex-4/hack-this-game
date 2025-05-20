# {HTG} // CODE STARTER
# > Platformer Movement
#
# A script that adds platformer-style movement to any CharacterBody2D, with gravity and jumping. Requires the input actions "left", "right", and "action", which are already included if you use the HTG starter project!

extends CharacterBody2D # The type of node this script works with.

# HACK ME!
@export var SPEED = 300.0
@export var JUMP_VELOCITY = -400.0


func _physics_process(delta): # _physics_process is a special function that runs every frame. delta is the amount of time since the last frame.
	# GRAVITY
	if not is_on_floor(): # Only run the below line if we're not on the ground
		velocity = velocity + get_gravity() * delta # Add gravity (which is a negative number) to the velocity. Change the gravity in Project -> Project Settings... -> 2D under Physics -> Default Gravity. Or just replace get_gravity() with a negative number, I won't judge.

	# JUMP
	if Input.is_action_just_pressed("action") and is_on_floor(): # If [Action] (space or left click by default) was pressed AND we're on the ground, overwrite our up/down velocity.
		velocity.y = JUMP_VELOCITY

	# SIDE-TO-SIDE MOVEMENT
	var direction = Input.get_axis("left", "right") # Gives us a number between -1 and 1, with -1 being the left key pressed, and 1 being the right key pressed. If nothing (or both) are pressed, returns 0.
	if not direction == 0: # If the direction ISN'T zero...
		velocity.x = direction * SPEED # set that as our velocity
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED) # otherwise (i.e nothing is pressed), slow down until we hit zero

	move_and_slide() # Moves according to velocity
