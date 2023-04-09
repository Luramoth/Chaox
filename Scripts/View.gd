extends Camera3D

@export var Ray:RayCast3D
@export var Point:Node3D

const CAMERA_DISTANCE:float = 4.7
const LERP_SPEED:float = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	Point.position.z = CAMERA_DISTANCE

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Ray.force_raycast_update()
	
	if (Ray.is_colliding()):
		# as complicated as this line looks it's actually very simple
		# all it does is find where to move the camera to so it isent obscured by obsticles
		# it also does some fancy lerping so it doesent just JUT forward
		self.position = self.position.lerp(Vector3(0,0,CAMERA_DISTANCE - Ray.get_collision_point().distance_to(Point.global_position)), delta * LERP_SPEED)
	else:
		# for better understanding this is basically a simplified version of the last line
		self.position = self.position.lerp(Vector3(0,0,CAMERA_DISTANCE), delta * LERP_SPEED)
