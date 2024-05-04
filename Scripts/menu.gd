extends Control

func _ready():
	# Focus button so player will be able to move with keyboard as well
	$VBoxContainer/StartButton.grab_focus()

func _on_start_button_pressed():
	# Change to main scene when start button is clicked
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_exit_button_pressed():
	get_tree().quit()
