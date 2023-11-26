extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

var SPEED: int = 300.0
const JUMP: int = 300.0

var but_left: bool = false
var but_right: bool = false
var but_up: bool = false
var but_down: bool = false

func _physics_process(_delta):
	anim.play("default")
	
	velocity.x = SPEED
	if Input.is_action_pressed("ui_right") or but_right:
		SPEED += 5
	elif (Input.is_action_pressed("ui_left") or but_left) and SPEED > 300:
		SPEED -= 15
	else:
		SPEED = SPEED
	
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * JUMP
	else:
		velocity.y = move_toward(velocity.y, 0, JUMP)
		
	if but_up:
		velocity.y = -1 * JUMP
	elif but_down:
		velocity.y = 1 * JUMP
	else:
		velocity.y = move_toward(velocity.y, 0, JUMP)
	

	move_and_slide()


func _on_hitbox_area_entered(area):
	get_tree().change_scene_to_file("res://scene/choice_level.tscn")

func _on_left_button_down():
	but_left = true

func _on_left_button_up():
	but_left = false

func _on_right_button_down():
	but_right = true

func _on_right_button_up():
	but_right = false

func _on_down_button_down():
	but_down = true

func _on_down_button_up():
	but_down = false

func _on_up_button_down():
	but_up = true

func _on_up_button_up():
	but_up = false
