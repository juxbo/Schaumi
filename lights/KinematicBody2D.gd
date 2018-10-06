extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var targetposition = Vector2()
var speed = 10.0

signal move

func _ready():
	get_node("AnimatedSprite/blue_light/AnimationPlayer").play("fwwa")
	pass

func _process(delta):
	self.move_and_slide(Vector2(10.0*speed, 0.0).rotated(self.rotation))
	emit_signal("move")
	pass

func _input(event):
	if event is InputEventKey:
		match event.scancode:
			KEY_SPACE:
				if event.pressed:
					self.speed = 20.0
					self.get_node("AnimatedSprite").animation = "boost"
				else:
					self.speed = 10.0
					self.get_node("AnimatedSprite").animation = "idle"
	if event is InputEventMouseButton:
		match event.button_index:
			BUTTON_LEFT:
				if event.pressed:
					self.speed = 20.0
					self.get_node("AnimatedSprite").animation = "boost"
				else:
					self.speed = 10.0
					self.get_node("AnimatedSprite").animation = "idle"
	if event is InputEventMouseMotion:
		self.look_at(get_global_mouse_position())
	pass