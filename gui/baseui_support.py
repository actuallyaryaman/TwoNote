#! /usr/bin/env python3
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 7.6
#  in conjunction with Tcl version 8.6
#    Dec 22, 2022 02:14:24 PM IST  platform: Windows NT
import threading,time
import sys
import tkinter as tk
import tkinter.ttk as ttk
from tkinter.constants import *

import baseui

_debug = True # False to eliminate debug printing from callback functions.

def adpg():
    global pgcount
    NewTab_t1 = tk.Frame(w1.TNotebook1)
    pgcount=pgcount+1
    w1.TNotebook1.add(NewTab_t1,text="Page("+str(pgcount)+")", padding=3)
    #NewTab_t1.tab(0, text='''Page 1''', compound="left"
    #           ,underline='''-1''', )
    NewTab_t1.configure(background="#d9d9d9")
    NewTab_t1.configure(highlightbackground="#d9d9d9")
    NewTab_t1.configure(highlightcolor="black")
    w1.TNotebook1.select(NewTab_t1)
    print("Add page "+str(pgcount))
    w1.TNotebook1.insert(pgcount-2,NewTab_t1)
    print(pgcount)
def delpg():
    global pgcount
    if(pgcount!=2):
        w1.TNotebook1.forget(w1.TNotebook1.select())
        pgcount-=1
        w1.TNotebook1.select(pgcount-2)

def focuscheck():
    print("")
def trace():
    print("Thread 1")


def main(*args):
    '''Main entry point for the application.'''
    global root
    global pgcount
    pgcount=3
    root = tk.Tk()
    root.protocol( 'WM_DELETE_WINDOW' , root.destroy)
    # Creates a toplevel widget.
    global top1, w1
    top1 = root
    w1 = baseui.Toplevel1(top1)
    thread = threading.Thread(target=trace)
    thread.start()
    root.mainloop()

if __name__ == '__main__':
    baseui.start_up()




