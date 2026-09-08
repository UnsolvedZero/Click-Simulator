extends Button

func _on_pressed():
	var selected = $"../Shop".get_selected_items()
		
	if selected.is_empty():
		return
						
	var index = selected[0]
	var item_name = $"../Shop".get_item_text(index)
						
	print("Selected: ", item_name)
									
	var main = $"../Button"
										
	if item_name == "Upgrade Button":
		print("Item is correct!")
		print("Money:", main.money)
