extends Node2D

@onready var parent_node = $Blocks
@onready var block_scene = preload("res://scenes/block.tscn")
@onready var player_scene = preload("res://scenes/player.tscn")
@onready var ball_scene = preload("res://scenes/ball.tscn")
@onready var player_start_position = $PaddleStartPosition
@onready var ball_start_position = $BallStartPosition

@export var margin: int = 20	
@export var column_count = 8
@export var row_count = 5


var ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var field_size = get_viewport_rect().size 
	
	# create the blocks
#	var block = block_scene.instantiate()
	var block_width = ((field_size.x-margin) / column_count) - margin
	var block_height = (field_size.y/(row_count*2)) - margin
#	var block_size = block.get_node("Sprite2D").texture.get_size()
#	var scale = block.get_node("Sprite2D").transform.get_scale()
#	block.queue_free()
#	var block_width : int = (scale.x * block_size.x)
#	var block_height : int =(scale.y * block_size.y)
#	var column_count :int  = (field_size.x / block_width) -1
#	var row_count :int  = field_size.y/2  / (block_height+margin)
	var current_x = block_width / 2 + margin
	var current_y = block_height / 2 + margin
	
	for i in range (column_count):
		for j in range(row_count):
			var new_block = block_scene.instantiate()
			new_block.global_position = Vector2(current_x, current_y)
			parent_node.add_child(new_block)	
			current_y += block_height + margin	
			
		current_x += block_width + margin
		current_y = block_height / 2 + margin
	
	# create the ball
	ball = ball_scene.instantiate()
	ball.global_position = ball_start_position.global_position
	add_child(ball)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
		
