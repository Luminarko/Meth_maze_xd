extends Area2D

signal item_taken

func _on_Item_body_entered(body):
	if body.name == "Player":
		Global.score += 1
		emit_signal("item_taken")
		queue_free()
