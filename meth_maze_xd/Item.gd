extends Area2D

signal item_taken
onready var Bar = get_node("/root/Level_1/Player/ProgressBar")

func _on_Item_body_entered(body):
	if body.name == "Player":
		$Sniff.play()
		

 
func _on_Sniff_finished():
	Global.score += 1
	Global.hp += 10
	Bar.value += 10
	if Global.score == 25:
		get_tree().change_scene("res://End.tscn")
	emit_signal("item_taken")
	queue_free()
