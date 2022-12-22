from pynput import mouse
import unknown_support

global arr, down
down = False
arr = []
color = "#000000"

def on_click(x, y, button, pressed):
    global arr
    global down
    if pressed and button is mouse.Button.left:
        unknown_support.w1.Canvas1.create_rectangle(x, y, x+1, y)
        arr = [(x, y)]
        down = True
        print(x,y)
    elif not pressed and button is mouse.Button.left:
        print(arr)
        down = False

def on_move(x, y):
    if down:
        unknown_support.w1.Canvas1.create_line(arr[len(arr)-1][0], arr[len(arr)-1][1], x, y)
        print(arr[len(arr)-1][0], arr[len(arr)-1][1])
        arr.append((x, y))