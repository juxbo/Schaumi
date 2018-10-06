extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	print("iniiiiiiiit")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func collided(area):
	print("yooooooo")
	remove_child(area)
	remove_and_skip()


func bodyEntered(body):
	print("hi")
	pass # replace with function body
