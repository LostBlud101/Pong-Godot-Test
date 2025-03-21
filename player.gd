extends RigidBody2D

var movement = Vector2.ZERO
var Speed = 400

func _physics_process(delta):
	linear_velocity = movement * Speed


func _on_up_button_pressed() -> void:
	movement = Vector2.UP


func _on_down_button_pressed() -> void:
	movement = Vector2.DOWN
