# {HTG} // CODE STARTER
# > 8-Directional Movement
#
# A script that adds eight-directional movement to any CharacterBody2D, without gravity. Requires the input actions "up", "down", "left", and "right", which are already included if you use the HTG starter project!

# NOTE A Vector2D is a set of two numbers, like this: (-2, 9). They are used everywhere in Godot, from the positions of nodes to joysticks.

extends CharacterBody2D # The type of node this script works with.

@export var speed = 300 # HACK ME!

func _physics_process(delta): # _physics_process is a special function that runs every frame.
	var input_direction = Input.get_vector("left", "right", "up", "down") # Gets a Vector2D representing the state of our WASD/arrow keys, then stores it in input_direction
	
	velocity = input_direction * speed # The * here means to multiply, because using the letter x makes some things really confusing. Sets the velocity to our input, times our speed.

	move_and_slide() # Moves according to the velocity.
