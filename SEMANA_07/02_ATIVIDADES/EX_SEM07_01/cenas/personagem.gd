extends KinematicBody2D


# "speed" é uma variável inteira que armazena a velocidade do player em pixels por segundo / "speed" is an integer variables of the player speed in pixels  per second.
var speed = 100
var velocity = 20
# Velocity é uma variável que armazena a velocidade atual do objeto na direção x. / Velocity is the actual velocity of the object on direction x.
var velocityPlayer = Vector2()


func _physics_process(delta):
	pass
	
func _process(delta):
	# Move sprite based on arrow key input
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed * delta
	position += velocity

#func _update_movement(delta):
#	velocityPlayer.x = 0
#	if Input.is_action_pressed("move_right"): 
#		velocityPlayer.x += speedPlayer
#
#	if Input.is_action_pressed("move_left"): 
#		velocityPlayer.x -= speedPlayer
#
#	if Input.is_action_pressed("move_cima"): 
#		velocityPlayer.y -= speedPlayer
#
#	if Input.is_action_pressed("move_baix0"): 
#		velocityPlayer.y += speedPlayer
#
#
#	velocityPlayer = move_and_slide(velocityPlayer, Vector2())
