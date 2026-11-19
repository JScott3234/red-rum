extends Node

@export var menu: Node2D
@export var bkgd: Sprite2D

func _on_button_pressed() -> void:
	# check if a dialog is already running
	if Dialogic.current_timeline != null:
		return
	menu.visible = false
	Dialogic.start('0.1 - dream')
	get_viewport().set_input_as_handled()
	await(Dialogic.timeline_ended)
	bkgd.visible = true
	get_tree().change_scene_to_file("res://test/pc_test.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit()
