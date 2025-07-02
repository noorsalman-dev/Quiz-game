extends Area2D

@onready var gamemanger: Node = %gamemanger


 
func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_pressed("attack"):
		print("img ata")
		get_tree().change_scene_to_file("res://levels/level1.tscn")
