extends RichTextLabel


var ms = 0
var s = 0
var m = 0 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ms > 9:
		s+=1
		ms = 0
	
#	if s > 59:
#		m+=1
#		s = 0

	if s >= 30:
		get_tree().change_scene("res://cenas/gameover.tscn")
		
		
		
	
	set_text(str(m)+":"+str(s)+":"+str(ms))
	
	if m >= 1:
		print("acabou")


func _on_Timer_timeout():
	ms += 1

#
#func _on_iniciar_pressed():
#	$Timer.start()
	

