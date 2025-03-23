extends Control

func _ready():
	var button = $Button
	button.connect("pressed", self._on_button_pressed)

var counter = 0
func _on_button_pressed():
	counter = counter + 1
	if counter == 1:
		print("Button pressed ", counter, " time!")
	
	else:
		print("Button pressed ", counter, " times!")
		
func _input(event):
	if event is InputEventKey and event.pressed:
		print("Key Pressed!")
