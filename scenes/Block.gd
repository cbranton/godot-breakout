extends StaticBody2D
class_name Block

var size 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sprite = get_node("Sprite2D") as Sprite2D
	#var area2d = $CollisionShape2D
	#self.area_exited.connect(_on_hit)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: RigidBody2D): #area of the block
	print ("player hit the block")



func _on_body_exited(body: Node2D) -> void:
	print ("body hit the block")
