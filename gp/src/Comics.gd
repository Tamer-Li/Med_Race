extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	get_tree().change_scene_to_file("res://scene/main.tscn")
	$AudioStreamPlayer2D2.play()

func _on_push_pressed():
	get_tree().change_scene_to_file("res://scene/comics_2.tscn")
	$AudioStreamPlayer2D2.play()

func _on_pass_pressed():
	get_tree().change_scene_to_file("res://scene/choice_level.tscn")
	$AudioStreamPlayer2D2.play()
