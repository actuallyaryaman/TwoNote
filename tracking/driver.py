from pynput import mouse
global arr
arr = []

def on_click(x, y, button, pressed):
    global arr
    if pressed and button is mouse.Button.left:
        arr = [(x, y)]
        print(x,y)
    elif not pressed and button is mouse.Button.left:
        print(arr)

def on_move(x, y):
    arr.append((x, y))