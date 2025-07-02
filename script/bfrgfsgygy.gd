extends Area2D


const FILE_BEGIN = "res://levels/level"# Called when the node enters the scene tree for the first time.


func _on_body_entered(body: Node2D) -> void:
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_number = current_scene_file.to_int() + 1
	
	var next_level_path = FILE_BEGIN + str(next_level_number) + ".tscn"
	get_tree().change_scene_to_file("res://levels/level_3.tscn")
