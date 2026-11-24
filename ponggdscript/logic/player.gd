extends Area2D
@export var speed = 400
@export var _bounce_direction = 1
var screen_size


func _ready():
	screen_size = get_viewport_rect().size

func _on_area_entered(area):
	if area.name == "Ball":
		area.direction = (area.direction + Vector2(0, _bounce_direction)).normalized()
		area.changeDirection = true


func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("DOWN"):
			velocity.y += 1000
			print("Down has been pressed!")
	if	Input.is_action_pressed("UP"):
			velocity.y -= 1000
			print("Up has been pressed!")
	
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
