extends Button

var money = 0
var clickAmount = 1
var is_animating = false

func _on_button_down() -> void:
	if is_animating:
		return
					
	is_animating = true
						
	$ButtonLook.play("Button2 Click")
	await $ButtonLook.animation_finished
								
	money += clickAmount
	$Money.text = str(money)
										
	is_animating = false
