extends Control

func _ready():
	$Button.grab_focus()

func _on_Button_pressed():
	get_tree().change_scene("res://Info.tscn")
	Global.score = 0
	Global.hp = 100
	Global.speed = 200
