extends Node2D

var module = [
	preload("res://scene/title/title_1.tscn"),
	preload("res://scene/title/title_2.tscn"),
	preload("res://scene/title/title_3.tscn"),
	preload("res://scene/title/title_4.tscn")
]

var random_scene = RandomNumberGenerator.new()
var select_scene = 0
var rend = false
var i: int = 0

func _ready():
	pass

func _physics_process(_delta):
	if rend:
		var x = 9600 + i * 1920
		random_scene.randomize()
		select_scene = random_scene.randi_range(0, module.size()-1)
		print(select_scene)
		var tmp = module[select_scene].instantiate()
		tmp.position.x = x
		add_child(tmp)
		i += 1
		rend = false


func _on_timer_timeout():
	rend = true
