extends RigidBody2D

var drag = false
var s = 1


func _input(event):
    if Input.is_action_just_pressed("WALK"):
        drag = true
    if Input.is_action_just_released("WALK"):
        drag = false
        s = 1
        
    if drag and event is InputEventMouseMotion and s == s:
     angular_velocity = lerp(angular_velocity, event.relative.x * 0.5, 0.2)
