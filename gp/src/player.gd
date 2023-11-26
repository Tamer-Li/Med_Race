extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

var SPEED: int = 300.0
const JUMP: int = 300.0

func _physics_process(_delta):
	anim.play("default")
	
	velocity.x = SPEED
	if Input.is_action_pressed("ui_right"):
		SPEED += 25
	elif Input.is_action_pressed("ui_left") and SPEED > 300:
		SPEED -= 25
	else:
		SPEED = SPEED
	
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * JUMP
	else:
		velocity.y = move_toward(velocity.y, 0, JUMP)

	move_and_slide()


func _on_hitbox_area_entered(area):
	get_tree().change_scene_to_file("res://scene/choice_level.tscn")
