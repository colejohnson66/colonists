extends Node


static func map_color_number(index: int):
	if index == 1:
		return Color("#FF7F00") # orange
	if index == 2:
		return Color("#B3B289") # beige
	if index == 3:
		return Color("#964B00") # brown
	if index == 4:
		return Color("#FF0000") # red
	if index == 5:
		return Color("#FFD700") # gold
	if index == 6:
		return Color("#90EE90") # light green
	if index == 7:
		return Color("#FFFFFF") # white
	if index == 8:
		return Color("#008000") # green
	if index == 9:
		return Color("#808080") # gray
	if index == 10:
		return Color("#FFFF99") # yellow
	if index == 11:
		return Color("#0D98BA") # blue/green
	if index == 12:
		return Color("#40E0D0") # turqoise
	assert(false)
