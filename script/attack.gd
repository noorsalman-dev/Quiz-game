extends Node2D

var player_position = false

var attack_position = true

func _physics_process(delta: float) -> void:
	
	if player_position == attack_position:
		$AnimatedSprite2D.play("take_attack")
