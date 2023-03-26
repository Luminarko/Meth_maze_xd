extends Control

func _ready():
	$Label.text = "GRAMS: " + String(Global.score)
	Global.speed = Global.speed + 10

func _on_Item_item_taken():
	_ready()
	
	
