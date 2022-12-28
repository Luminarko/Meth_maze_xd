extends Control

func _ready():
	$Label.text = "GRAMS: " + String(Global.score)


func _on_Item_item_taken():
	_ready()
	
	
