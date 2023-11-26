extends Node2D

@export var module: Array = [PackedScene]

var random_scene = RandomNumberGenerator.new()
var select_scene = 0

func _on_timer_timeout():
	random_scene.randomize()
	select_scene = random_scene.randi_range(0, module.size() - 1)
	var tmp = module[select_scene].instantiate()
	add_child(self, tmp)
