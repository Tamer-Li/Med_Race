extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

var SPEED: int = 30000.0
const JUMP: int = 30000.0

func _physics_process(delta):
	anim.play("default")
	
	velocity.x = SPEED * delta
	if Input.is_action_pressed("ui_right"):
		SPEED += 500
	elif Input.is_action_pressed("ui_left") and SPEED > 30000:
		SPEED -= 1500
	else:
		SPEED = SPEED
	
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * JUMP * delta
	else:
		velocity.y = move_toward(velocity.y, 0, JUMP)

	move_and_slide()


func _on_hitbox_area_entered(area):
	get_tree().change_scene_to_file("res://scene/choice_level.tscn")
