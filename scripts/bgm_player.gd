extends AudioStreamPlayer

var bgm = preload("res://assets/sounds/bgm.wav")

# Called when the node enters the scene tree for the first time.
func _ready():
	play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_bgm_finished():
	play()
