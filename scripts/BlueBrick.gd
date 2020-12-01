extends KinematicBody2D


var screen_size = Vector2()
var direction
var motion
export var speed = 400
export var life = 4

var color_set = [0, "aec8f8", "6995e8", "1755ca", "00308b"]


func get_input():
	var up = Input.is_action_pressed("p1_up")
	var down = Input.is_action_pressed("p1_down")
	if up:
		direction[1] = -1
	elif down:
		direction[1] = 1
	else:
		direction[1] = 0
	var left = Input.is_action_pressed("p1_left")
	var right = Input.is_action_pressed("p1_right")
	if left:
		direction[0] = -1
	elif right:
		direction[0] = 1
	else:
		direction[0] = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	direction = Vector2()
	screen_size = get_viewport_rect().size
	modulate.a = 1

func _process(delta):
	pass
	
func _physics_process(delta):
	get_input()
	motion = direction * speed * delta
	move_and_collide(motion)

func handle_hit() -> int :
	life -= 1
	modulate = color_set[life]
	if life <= 0:
		$free.play()
		$Boom.emitting = true
		queue_free()
	return 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
