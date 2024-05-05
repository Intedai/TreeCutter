extends Node2D

@onready var animated_sprite_2d = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	animated_sprite_2d.play("use_axe")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position = self.get_global_mouse_position()
