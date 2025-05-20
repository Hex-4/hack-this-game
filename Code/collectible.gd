# {HTG} // CODE STARTER
# > Collectibe
#
# A script that makes any Area2D a collectible for the player. Think coins, health potions, or speed boosts! Relies on the body_entered signal to work, as well as the player being called Player.

# NOTE: You'll need to connect the body_entered signal for this script to work. If you're doing a {HTG} workshop, the leader will guide you though this.

extends Area2D # The type of node this script works with.

# Doesn't do anything, these are just here if you ever need them!
# Runs when the node is created (usually when the game starts)
func _ready() -> void:
	pass # Does nothing.

# Doesn't do anything, these are just here if you ever need them!
# Called every frame. 'delta' is the time since the previous frame.
func _process(delta: float) -> void:
	pass # Like my efforts to become popular, does nothing.

# WARNING I'm going to continue to bug you about this. WILL NOT WORK IF THE SIGNAL IS NOT CONNECTED
func _on_body_entered(body): # Runs when a body (e.g our CharacterBody2D) enters this area.
	if body.name == "Player": # Only run the below code if we've touched a player.
		# HACK ME!
		# You can change any of the player's variables, like so:
		# body.
