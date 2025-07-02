extends Area2D


# Called when the node enters the scene tree for the first time.


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_pressed("attack"):
		print("img ata")
		get_tree().change_scene_to_file("res://levels/level2.tscn")
