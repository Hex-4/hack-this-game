# {HTG} // CODE STARTER
# > Game Ender (based on Collectible)
#
# A script that makes any Area2D end the game, by switching to a scene. Relies on the body_entered signal to work, as well as the player being called Player.

# NOTE: You'll need to connect the body_entered signal for this script to work. If you're doing a {HTG} workshop, you've duplicated the Collectible scene, so you don't need to worry.

extends Area2D # The type of node this script works with.

@export_file("*.tscn") var scene # Adds a field to the area's Inspector panel, allowing us to choose a scene

# Doesn't do anything, these are just here if you ever need them!
# Runs when the node is created (usually when the game starts)
func _ready():
	pass # Does nothing.

# Doesn't do anything, these are just here if you ever need them!
# Called every frame. 'delta' is the time since the previous frame.
func _process(delta):
	pass # Like my efforts to become popular, does nothing.

func _on_body_entered(body): # Runs when a body (e.g our CharacterBody2D) enters this area.
	if body.name == "Player": # Only run the below code if we've touched a player.
		get_tree().change_scene_to_file(scene) # Changes the scene.
		
		# We don't need to queue_free here because that happens automatically when we change scenes.
