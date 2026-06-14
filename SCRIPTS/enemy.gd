extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.x -= 2 * delta * 100
	if self.position.x < -700:
		self.position.x = 350

func _player_death(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.queue_free()
	else:
		print(body.get_groups())
