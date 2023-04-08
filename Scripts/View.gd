extends Camera3D

@export var Ray:RayCast3D
@export var Point:Node3D

const CAMERA_DISTANCE:float = 4.7
const MARGIN:float = 0.1
const LERP_SPEED:float = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Ray.force_raycast_update()
	
	if (Ray.is_colliding()):
		self.position = self.position.lerp(Vector3(0,0,CAMERA_DISTANCE - Ray.get_collision_point().distance_to(Point.global_position)), delta * LERP_SPEED)
	else:
		self.position.z = CAMERA_DISTANCE
