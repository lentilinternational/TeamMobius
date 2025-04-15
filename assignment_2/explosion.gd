extends Node2D

func _ready():
	pass

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		$CPUParticles2D.emitting = true
