extends Light2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var targetposition = Vector2()
var speed = 10.0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if self.position != self.targetposition:
		self.position = self.targetposition
	pass

func _input(event):
	if event is InputEventMouseButton:
		match event.button_index:
			BUTTON_LEFT:
				self.targetposition = event.position
	if event is InputEventMouseMotion:
		self.look_at(event.position)
	pass