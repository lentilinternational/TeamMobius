extends Control
@onready var button = $Button
@onready var coin = $Coin

func _ready():
	button.text = "Click me to play a sound!"
	button.pressed.connect(_button_pressed)
	add_child(button)

func _button_pressed():
	coin.play()
	
