extends PathFollow2D

@onready var pawn = $Heart

var last_position: Vector2 = Vector2(0, 0)

func _ready():
    pawn.position = Vector2(0,0)


func _physics_process(delta):
    progress_ratio += 0.1 * delta
    last_position = position

    var direction: Vector2 = position - last_position
    var goes_right = direction.x > 0
