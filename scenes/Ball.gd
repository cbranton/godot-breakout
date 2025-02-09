extends RigidBody2D
class_name  Ball

const BALL = 4
const BLOCK = 8

# We will set the ball in motion and let the 2D physics system do the rest.
# See the README for settings to make this work correctly.

@export var initial_velocity = Vector2(700,500)

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready() -> void:
	apply_force(initial_velocity)




func _on_body_exited(body: Node) -> void:
	var layer = body.collision_layer
	if layer == BLOCK:
		body.queue_free()
		
