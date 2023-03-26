extends KinematicBody2D

var speed = 100
var direction = 1
var velocity = Vector2()


func _physics_process(_delta):
	if is_on_wall():
		direction = direction * -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
	velocity.x = speed * direction
	
	move_and_slide(velocity, Vector2.UP)
