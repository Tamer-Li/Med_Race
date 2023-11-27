extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scene/comics_1.tscn")
	$AudioStreamPlayer2D2.play()


func _on_quit_pressed():
	get_tree().exit()
	$AudioStreamPlayer2D2.play()


func _on_info_pressed():
	get_tree().change_scene_to_file("res://scene/info.tscn")
	$AudioStreamPlayer2D2.play()
