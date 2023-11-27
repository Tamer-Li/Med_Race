extends CharacterBody2D


const SPEED = 1000.0

func _physics_process(delta):
	$AnimatedSprite2D.play("default")
	velocity.x = SPEED * delta * 10

	move_and_slide()


func _on_hurtbox_area_entered(area):
	queue_free()


func _on_life_span_timeout():
	queue_free()
