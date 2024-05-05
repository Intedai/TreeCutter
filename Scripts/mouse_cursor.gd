extends Node2D

@onready var animated_sprite_2d = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	self.position = self.get_global_mouse_position()
	# If left click was pressed return to first frame and play the click animation
	if Input.is_action_just_pressed("click_left"):
		animated_sprite_2d.frame = 0
		animated_sprite_2d.play("use_axe")
	

