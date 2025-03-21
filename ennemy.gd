extends RigidBody2D

func _physics_process(delta):
	var ball_position_y = get_parent().get_node("Ball").position.y
	position.y = ball_position_y
