extends Camera2D

const SPEED = 150.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Get input from keyboard
	var x_direction = Input.get_axis("move_left", "move_right")
	var y_direction = Input.get_axis("move_up", "move_down")
	
	# Update camera position according to keyboard input
	position += Vector2(x_direction, y_direction) * SPEED * delta
