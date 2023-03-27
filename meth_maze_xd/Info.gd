extends Control

func _ready():
	$play.grab_focus()

func _on_play_pressed():
	get_tree().change_scene("res://Level_1.tscn")
