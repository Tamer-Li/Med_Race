extends Node2D

var l: int = 1
@onready var p = $CanvasLayer/ins1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if l == 0:
		get_tree().change_scene_to_file("res://scene/comics_2.tscn")
	elif l == 1:
		p.hide()
		$CanvasLayer/ins1.show()
		p = $CanvasLayer/ins1
	elif l == 2:
		p.hide()
		$CanvasLayer/ins2.show()
		p = $CanvasLayer/ins2
	elif l == 3:
		p.hide()
		$CanvasLayer/ins3.show()
		p = $CanvasLayer/ins3
	else:
		get_tree().change_scene_to_file("res://scene/choice_level.tscn")


func _on_button_pressed():
	l -= 1


func _on_button_2_pressed():
	l += 1
