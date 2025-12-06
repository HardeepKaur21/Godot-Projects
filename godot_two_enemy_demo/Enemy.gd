extends Area2D

@onready var animation: AnimationPlayer = $AnimationPlayer
var sprite

func _ready():
	sprite = get_node("../Sprite2D 2")
	

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("Enemy was clicked!")
	pass # Replace with function body.


func _on_body_entered(body):
	if body.is_in_group("Player"):  # safer check if you add more bodies later
		print("%s touched!" % name)
		animation.play("hurt")
