extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var enemy_inattack_range = false
var enemy_attack_cooldown = true
var health = 40
var player_alive = true

var current_dir = "none"


func _physics_process(delta: float) -> void:
	enemy_attack()
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	
	if health <= 0:
		player_alive = false
		health = 0
		print("player has been killed")
		self.queue_free()

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func player():
	pass



func enemy_attack():
	if enemy_inattack_range and enemy_attack_cooldown == true:
		health = health - 20
		enemy_attack_cooldown = false
		$attack_cooldown.start()
		print(health)


func _on_attack_cooldown_timeout() -> void:
	enemy_attack_cooldown = true


func _on_sowrd_hit_area_entered(area: Area2D) -> void:
	if area.is_in_group("hurtbox"):
		area.take_damage()

func _on_sowrd_hit_area_exited(area: Area2D) -> void:
	pass # Replace with function body.
