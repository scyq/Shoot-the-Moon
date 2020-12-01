extends Control

var color = [Color(0,0,255,1), Color(255,0,0,1)]
var win = ["BLUE", "RED"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func end(winner : int):
	$Winner.text = win[winner]
	$Winner.add_color_override("font_color", color[winner])
	$AnimationPlayer.play("ShowWinner")

func _on_Button_pressed():
	get_parent().get_tree().reload_current_scene()
	pass # Replace with function body.
