extends Node2D

var rng = RandomNumberGenerator.new()
var numRandom

var numRandomPosition

func _process(delta):
	rng.randomize()
	numRandom = rng.randi_range(0, 3)
	numRandomPosition = rng.randi_range(0, 10)
	print(numRandom)
	if numRandom == 1:
		$Icon.move_local_x(numRandomPosition)
	elif numRandom == 2:
		$Icon.move_local_x(- numRandomPosition)
	elif numRandom == 3:
		$Icon.move_local_y(numRandomPosition)
	elif numRandom == 0:
		$Icon.move_local_y(- numRandomPosition)
	
