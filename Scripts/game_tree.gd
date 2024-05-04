extends Area2D

@onready var game_tree = $"."
@onready var game_manager = %GameManager

# HP for each tree, when reaches 0 tree self destructs
var HP = 5

func _ready():
	# Connect input event signal to func that handles tree clicking
	game_tree.input_event.connect(_on_input_event)

func _on_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int):
	# Every click subtructs 1 HP if reaches 0 destroys and adds a coin
	if Input.is_action_just_pressed('destroy'):
		HP -= 1
		if HP == 0:
			queue_free()
			game_manager.add_coin()
		
