extends Control

@onready var bunny = $Bunny

func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_D:
		queue_free()
