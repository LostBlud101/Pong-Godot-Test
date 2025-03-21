extends RigidBody2D

var direction = 1
var speed = 300

func _ready():
	linear_velocity.x = speed * direction

func _physics_process(delta):
	linear_velocity.x = speed * direction




func _on_body_entered(body: Node) -> void:
	if body.is_in_group("EnemeyOrPlayer"):
		direction *= -1


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	get_tree().reload_current_scene()
