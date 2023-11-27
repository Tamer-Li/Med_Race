extends Node2D

var npc_scene = [
	preload("res://scene/npc/npc_1.tscn"),
	preload("res://scene/npc/npc_2.tscn"),
	preload("res://scene/npc/npc_3.tscn"),
	preload("res://scene/npc/npc_4.tscn"),
	preload("res://scene/npc/npc_5.tscn"),
	preload("res://scene/npc/npc_6.tscn"),
	preload("res://scene/npc/npc_7.tscn")
]

var coor = [405, 525, 650, 775]

var random_npc = RandomNumberGenerator.new()
var rand_y = RandomNumberGenerator.new()
var sel_y = 0
var select_npc = 0
var rend = false
var i: int = 0

func _ready():
	pass

func _physics_process(_delta):
	if rend:
		var x = 500 + i * 20
		rand_y.randomize()
		sel_y = rand_y.randi_range(0, coor.size()-1)
		var y = coor[sel_y]
		random_npc.randomize()
		select_npc = random_npc.randi_range(0, npc_scene.size()-1)
		var npc = npc_scene[select_npc].instantiate()
		print(select_npc)
		npc.position = Vector2(x, y)
		print(x, " ", y)
		add_child(npc)
		i += 1
		rend = false


func _on_spawn_timeout():
	rend = true
