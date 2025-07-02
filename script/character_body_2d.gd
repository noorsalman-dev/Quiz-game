extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


const SPEED = 140
const JUMP_VELOCITY = -400.0


var current_dir = "none"

func _physics_process(delta) : 
	player_movement(delta)
	
	if Input.is_action_just_pressed("ui_left"):
		animated_sprite_2d.play("sides walk")
	elif Input.is_action_just_pressed("ui_right"):
		animated_sprite_2d.play("side walk")

func player_movement(delta):
	
	if Input.is_action_pressed("ui_right"):
		current_dir = "rigt"
		play_anim(1)
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_anim(1)
		velocity.x = -SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		play_anim(1)
		velocity.y = SPEED
		velocity.x = 0
	elif  Input.is_action_pressed("ui_up"):
		current_dir = "up"
		play_anim(1)
		velocity.y = -SPEED
		velocity.x = 0
	else :
		velocity.y = 0
		velocity.x = 0

	move_and_slide()


func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		if movement == 1:
			anim.play("side walk")
		elif  movement == 0:
			anim.play("side idle")
	if dir == "left":
		if movement == 1:
			anim.play("sides walk")
		elif  movement == 0:
			anim.play("sides idle")
	if dir == "up":
		if movement == 1:
			anim.play("back walk")
		elif  movement == 0:
			anim.play("back idle")
	if dir == "down":
		if movement == 1:
			anim.play("front walk")
		elif  movement == 0:
			anim.play("front idle")

		
