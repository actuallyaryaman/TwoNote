from pynput import mouse
import unknown_support

global down
down = False
color = "#000000"

def on_click(x, y, button, pressed):
    global lx, ly
    global down
    if pressed and button is mouse.Button.left:
        lx, ly = x, y
        down = True
        print(x,y)
    elif not pressed and button is mouse.Button.left:
        down = False

def on_move(x, y):
    global lx, ly
    if down:
        unknown_support.w1.Canvas1.create_line(lx, ly, x, y, fill=color)
        lx, ly = x, y