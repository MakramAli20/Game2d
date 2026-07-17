extends RigidBody2D

var drag = false




func _input(event):
    if Input.is_action_just_pressed("WALK"):
        drag = true
    if Input.is_action_just_released("WALK"):
        drag = false
        $"../LEFT".s = 2

        
    if drag and event is InputEventMouseMotion and $"../LEFT".s == 1:
     angular_velocity = lerp(angular_velocity, event.relative.x * 0.5, 0.2)
