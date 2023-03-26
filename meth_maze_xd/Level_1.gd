extends Node2D


func _on_Lever_body_entered(_body):
	if $Lever/AnimatedSprite.frame == 0:
		$Lever/AnimatedSprite.frame = 1
		$Door/AnimationPlayer.play("Open")
		$Lever/Lever.play()
	else: 
		$Lever/AnimatedSprite.frame = 0
		$Door/AnimationPlayer.play("Closed")
		$Lever/Lever.play()
		

