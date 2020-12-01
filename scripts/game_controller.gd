extends Node


onready var p1_score = $"../P1_Board"
onready var p2_score = $"../P2_Board"
onready var end = $"../Control"
var winner = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func game_over(who_die : int):
	p1_score = int(p1_score.text)
	p2_score = int(p2_score.text)
	if p1_score > p2_score:
		winner = 0
	elif p1_score < p2_score:
		winner = 1
	# scores reach a tie
	else:
		if who_die == 0:
			winner = 1
		else:
			winner = 0
	end.end(winner)
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
