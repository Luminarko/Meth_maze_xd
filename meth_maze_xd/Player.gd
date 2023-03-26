extends KinematicBody2D

onready var animation = $AnimatedSprite

func _physics_process(_delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
		animation.play("right")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -1
		animation.play("left")
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 1
		animation.play("right")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -1
		animation.play("left")
	else:
		animation.play("default")
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity * Global.speed)
	if velocity.x <= 0 and velocity.x >= 0 and velocity.y <= 0 and velocity.y >= 0:
		$Walking.play()


func hit():
	Global.hp -= 10
	$ProgressBar.value = Global.hp
	if Global.hp == 0:
		get_tree().reload_current_scene()
		Global.hp = 100
		Global.score = 0
		$ProgressBar.value = 100
	if Global.hp <= 30:
		$Heartbeat.play()
	else:
		$Heartbeat.stop()

func _on_HURTBOX_body_entered(body):
	if body.name.begins_with("Enemy") == true:
		$Hit.play()
		hit()
