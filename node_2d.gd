extends Node2D
var drag = false
var s = 1


func _input(event):
    if event is InputEventMouseMotion and drag == true and s == 1:
        rotation += event.relative.x * -0.01

func _process(delta: float) -> void:
    print(s)
    if Input.is_action_just_pressed("walk"):
        $"../Label".text = "you presses"
        drag = true
    if Input.is_action_just_released("walk"):
        drag = false
        $"../Label".text = "you released"
        s = 2
    
