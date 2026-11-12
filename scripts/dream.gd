extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _input(event: InputEvent):
	# check if a dialog is already running
	if Dialogic.current_timeline != null:
		return

	if event is InputEventKey and event.keycode == KEY_SPACE and event.pressed:
		Dialogic.start('0.1 - dream')
		get_viewport().set_input_as_handled()
		await(Dialogic.timeline_ended)
		get_tree().change_scene_to_file("res://test/pc_test.tscn")
