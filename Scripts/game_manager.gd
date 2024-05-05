extends Node

# Range of rng for amount of trees
const MAX_WOOD = 8
const MIN_WOOD = 2

# Coins and wood that the player earned from cutting trees
var coins = 0
var wood = 0

@onready var coin_label = %CoinLabel
@onready var wood_label = %WoodLabel


func update_currencies():
	coins += 1
	
	# Make new rng for every function call and get a random amount of wood per tree
	var rng = RandomNumberGenerator.new()
	wood += rng.randi_range(MIN_WOOD, MAX_WOOD)
	
	# Update coin count on canvas
	coin_label.text = str(coins)
	wood_label.text = str(wood)

	
