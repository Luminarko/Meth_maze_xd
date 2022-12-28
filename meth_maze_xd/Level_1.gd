extends Node2D

var damage = 10


func _on_Lever_body_entered(_body):
	if $Lever/AnimatedSprite.frame == 1:
		$Lever/AnimatedSprite.frame = 0
		$Door/AnimationPlayer.play("Close")
	else:
		$Lever/AnimatedSprite.frame = 1
		$Door/AnimationPlayer.play("Open")



