extends Node2D
var drag = false


func _input(event):
    if event is InputEventMouseMotion and drag == true and $"../Node2D".s == 2:
        rotation += event.relative.x * -0.01

func _process(delta: float) -> void:
    print($"../Node2D".s)
    if Input.is_action_just_pressed("walk"):
        $"../Label".text = "you presses"
        drag = true
    if Input.is_action_just_released("walk"):
        drag = false
        $"../Label".text = "you released"
        $"../Node2D".s = 2
       
    
