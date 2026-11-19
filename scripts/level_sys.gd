extends Node

var invert = false
@export var real: Node2D
@export var reverse: Node2D
@export var snap: AudioStreamPlayer
@export var menu: Node2D

func _ready() -> void:
	Dialogic.signal_event.connect(end_signal)

# dimensional management system
func _input(event: InputEvent):
	if event is InputEventKey and event.keycode == KEY_X and event.pressed:
		#print("X pressed")
		snap.play()
		if(!invert):
			#print("World Inverted")
			real.visible = false
			reverse.visible = true
			invert = true
		else:
			real.visible = true
			reverse.visible = false
			invert = false

func end_signal(argument: String):
	if argument == "end":
		menu.visible = true

func _on_button_2_pressed() -> void:
	get_tree().quit()

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")
