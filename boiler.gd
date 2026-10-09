extends Area2D

var screen_size
signal fuel_loading
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("open_door_fuel"):
		$AnimatedSprite2D.animation = "open"
		$AnimatedSprite2D.play()
	elif Input.is_action_pressed("close_door_fuel"):
		$AnimatedSprite2D.animation = "close"
		$AnimatedSprite2D.play()


func _on_body_entered(body):
	fuel_loading.emit() # Replace with function body.
