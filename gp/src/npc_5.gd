extends CharacterBody2D


const SPEED = 1000.0

func _physics_process(delta):
	$AnimatedSprite2D.play("default")
	velocity.x = SPEED * delta * 10

	move_and_slide()

func _on_timer_timeout():
	queue_free()


func _on_area_2d_area_entered(area):
	queue_free()
