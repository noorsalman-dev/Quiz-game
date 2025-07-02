extends Camera2D


var current_dir = "none"
var SPEED = 100

func _physics_process(delta) :
	camera_movent(delta)

func camera_movent(delta):
	if Input.is_action_just_pressed("attack"):
		current_dir = "rigt"
