extends Area2D




@onready var gamemanger: Node = %gamemanger


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_pressed("attack"):
		gamemanger.add_point()
		self.queue_free()
