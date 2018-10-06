extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func kackeBetreten(body):
	if(body.name == "KinematicBody2D"):
		get_node("StaticBody2D/AnimationPlayer").play("Neue Animation")
	pass # replace with function body


func zeitUm(anim_name):
	queue_free()
	pass # replace with function body
