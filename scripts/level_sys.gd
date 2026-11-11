extends Node

var invert = false
@export var real: Node2D
@export var reverse: Node2D

func _ready() -> void:
	pass # Replace with function body.

# dimensional management system
func _input(event: InputEvent):
	if event is InputEventKey and event.keycode == KEY_X and event.pressed:
		print("X pressed")
		if(!invert):
			print("World Inverted")
			real.visible = false
			reverse.visible = true
			invert = true
		else:
			real.visible = true
			reverse.visible = false
			invert = false
