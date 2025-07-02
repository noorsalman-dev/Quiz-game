extends Area2D

const FILE_BEGIN = "res://levels/level_3.tscn"


func _on_body_entered(body: Node2D) -> void:
	print("we happy")
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_number = current_scene_file.to_int() + 1
	
	get_tree().change_scene_to_file("res://levels/level3.tscn")
