extends Node

# Coins that the player earned from cutting trees
var coins = 0
@onready var score_label = %ScoreLabel

func add_coin():
	coins += 1
	# Update coin count on canvas
	score_label.text = str(coins)
