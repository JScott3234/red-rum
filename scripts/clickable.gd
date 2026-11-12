extends Node

@export var disappear = true
@export var scene_change = false
@export var click_sound: AudioStream
@export var hover_sound: AudioStream
@export var sound_player: AudioStreamPlayer
@export var next_scene: PackedScene

func _ready() -> void:
	pass # Replace with function body.

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		#print("Object clicked!")
		sound_player.stream = click_sound
		sound_player.play()
		Dialogic.start('clickTest')
		if(disappear):
			self.visible = false
		if(scene_change):
			get_tree().change_scene_to_packed(next_scene)


func _on_area_2d_mouse_entered() -> void:
	sound_player.stream = hover_sound
	sound_player.play()
