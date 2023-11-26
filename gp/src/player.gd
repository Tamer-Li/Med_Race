extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

var formula: int = 0
var rush: int

const SPEED = 300.0

func _physics_process(_delta):
	anim.play("default")
		
	var directionFast = Input.is_action_pressed("ui_right")
	if directionFast:
		formula += 50
		velocity.x = SPEED + formula * 0.4
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		rush = formula
		formula = 0
	
	var directionBack = Input.is_action_pressed("ui_left")
	if directionBack:
		velocity.x = -SPEED * 0.5
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	
	if true:
		velocity.x += 100 + rush
	
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
