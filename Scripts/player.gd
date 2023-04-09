extends CharacterBody3D


const SPEED:float = 6.0
const ACCELERATION:float = 5.0
const DECCELERATION:float = 7.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	
	if direction:
		velocity = velocity.lerp(Vector3(direction.x * SPEED, velocity.y, direction.z * SPEED), delta * ACCELERATION)
	else:
		velocity = velocity.lerp(Vector3(0, velocity.y, 0), delta * DECCELERATION)

	move_and_slide()
