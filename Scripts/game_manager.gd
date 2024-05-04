extends Node

# Coins that the player earned from cutting trees
var coins = 0
@onready var score_label = %ScoreLabel

func add_coin():
	coins += 1
	# Placeholder for when coins will be shown in the UI
	score_label.text = str(coins)
