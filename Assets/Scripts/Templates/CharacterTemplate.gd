extends Node2D
class_name CharacterTemplate

@export var character_config : CharacterCharacteristicsResource

var current_health : int

func _ready() -> void:
	current_health = character_config.max_health

func try_take_damage(damage_amount : int):
	
	var hit_chance = randi_range(0, 100) > character_config.evasive_chance
	
	if hit_chance:
		var damage_income = damage_amount - character_config.defense
		
		if damage_income > 0:
			decrease_health(damage_income)
		else:
			print(" NO DAMAGE ")
	else:
		print("NO HIT ON " + self.name)
		
func decrease_health(amount : int):
	current_health -= amount
	
	print(name + " " + str(current_health))
	
	if current_health <= 0:
		die()
		
func die():
	print(name + " IS DIED")
	queue_free()
