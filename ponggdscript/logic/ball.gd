extends Area2D

const DEFAULT_SPEED = 100

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT
var changeDirection = false

@onready var _initial_pos = position

func _process(delta):
	_speed += delta * 2
	position += _speed * delta * direction

func reset():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED

func _changeBallDirection(changeDirection):
	if changeDirection == true:
		if direction == Vector2.LEFT:
			direction = Vector2.RIGHT
		elif direction == Vector2.RIGHT:
			direction = Vector2.LEFT
