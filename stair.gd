extends StaticBody2D

var can_move: bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	await get_tree().create_timer(3).timeout
	can_move = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if can_move:
		self.position.x -= 2 * delta * 100
		if self.position.x < -1500:
			self.position.x = 350

func _player_death_st(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.queue_free()
		get_tree().call_deferred("change_scene_to_file", "res://SCENES/menu.tscn")
