extends RigidBody2D

export var velocity = 1200
var collider_normal

# -1 - wall and others
# 0 - P1
# 1 - P2 / CPU
var last_hit = -1


# Called when the node enters the scene tree for the first time.
func _ready():
	# get random start direction
	randomize()
	var start_v = Vector2(randi(), randi())
	for i in range(2):
		var dir = randi() % 2
		print(dir)
		if dir == 0:
			dir = 1
		else:
			dir = -1
		start_v[i] *= dir
	linear_velocity = start_v.normalized() * velocity
	
# warning-ignore:unused_argument
func _physics_process(delta):
	linear_velocity = linear_velocity.normalized() * velocity
	


func _on_Ball_body_entered(body):
	# hit the brick
	if body.has_method("handle_hit"):
		last_hit = body.handle_hit()
		$hit_brick.play()
	# hit moon
	elif body.has_method("update_scores"):
		body.update_scores(last_hit)
	# hit others
	else:
		$hit_other.play()
		

	
		
	# linear_velocity = linear_velocity.bounce(body.get_collider().get_normal())
