extends Area2D


@onready var game_manager = %GameManager
@onready var hp_sprite = $hp_sprite

# HP for each tree, when reaches 0 tree self destructs
var HP = 5

func _ready():
	hp_sprite.frame = 0
	# Connect input event signal to func that handles tree clicking
	input_event.connect(_on_input_event)

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int):
	# Every click subtructs 1 HP if reaches 0 destroys and adds a coin
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		HP -= 1
		hp_sprite.frame += 1
		if HP == 0:
			queue_free()
			game_manager.add_coin()
			

