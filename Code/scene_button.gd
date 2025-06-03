# {HTG} // CODE STARTER
# > Scene Button
#
# A quick, reusable script that makes any button switch the game's main scene.

# WARNING Make sure to choose a scene! The game will break if you don't.

extends Button # This script works with all buttons

@export_file("*.tscn") var scene # Adds a field to the button's Inspector panel, allowing us to choose a scene

# Called when the button is created, usually when the scene starts. 
func _ready():
	connect("pressed", switch_to_scene) # Instead of having to connect the "pressed" signal everytime, this line does that automatically. When the button is pressed, run switch_to_scene().
	
# Switch to the chosen scene.
func switch_to_scene():
	get_tree().change_scene_to_file(scene) # Changes the scene.
