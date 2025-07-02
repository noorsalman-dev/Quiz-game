extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $"../AnimatedSprite2D"

# Called when the node enters the scene tree for the first time.
var speed = 40
var player_chase = false
var player = null


func _physics_process(_delta):
	
	
	if player_chase:
		position += (player.position -position)/speed
		
		animated_sprite_2d.play("run")
		
	else :
		animated_sprite_2d.play("idle")





func _on_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true

func _on_body_exited(body: Node2D) -> void:
	player = body
	player_chase = false
