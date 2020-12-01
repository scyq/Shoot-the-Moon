extends Node2D

onready var controller
var alive = true

# Called when the node enters the scene tree for the first time.
func _ready():
	controller = $"../Controller"
	pass # Replace with function body.
	
func get_input():
	if Input.is_action_pressed("p1_unity"):
		var children = get_children()
		var center = children[0]
		var life_sum = 0
		for i in range (1, len(children)):
			var kid = children[i]
			life_sum += kid.life
			kid.queue_free()
		center.life += life_sum
		
func _process(delta):
	get_input()
	if alive:
		if get_child_count() <= 0:
			alive = false
			controller.game_over(0)

