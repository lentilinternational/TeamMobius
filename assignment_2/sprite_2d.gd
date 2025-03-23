extends Sprite2D

@onready var target_object = $Sprite2D  # Change this to your game object

func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_H:
		target_object.visible = !target_object.visible  # Toggle visibility
