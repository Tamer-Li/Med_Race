extends Node2D

var pause: bool = false

func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE

func _on_pause_pressed():
	if pause:
		$CanvasLayer/Pause_Panel.hide()
		get_tree().paused = false
	else:
		get_tree().paused = true
		$CanvasLayer/Pause_Panel.show()
	



func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scene/choice_level.tscn")
