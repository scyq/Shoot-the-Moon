extends StaticBody2D

onready var p1_board
onready var p2_board

# Called when the node enters the scene tree for the first time.
func _ready():
	p1_board = $"../P1_Board"
	p2_board = $"../P2_Board"

func update_scores(hitter : int):
	match hitter:
		0:
			p1_board.text = String(int(p1_board.text) + 1) 
		1:
			p2_board.text = String(int(p2_board.text) + 1)
	$get_score.play()
	
#func _process(delta):
#	pass
