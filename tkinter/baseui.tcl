#  Tcl version 8.6
#  Dec 21, 2022 06:35:26 PM IST  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) black
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m49" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 960x556+286+107
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1540 825
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Toplevel 0"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    menu "$top.m49" \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background $vTcl(actual_gui_menu_bg) \
        -font "TkMenuFont" -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    
set site_3_0 $top.m49
    $top.m49 add cascade \
        -menu "$top.m49.men50" -activebackground {} -activeforeground {} \
        -background {} -compound left -font {} -foreground {} -label "File" 
    menu "$site_3_0.men50" \
        -activebackground beige -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font "TkMenuFont" \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    
set site_4_0 $site_3_0.men50
    $site_3_0.men50 add cascade \
        -menu "$site_3_0.men50.men51" -activebackground {} \
        -activeforeground {} -background {} -command "{}" -compound left \
        -font {} -foreground {} -label "New" 
    menu "$site_4_0.men51" \
        -activebackground beige -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font "TkMenuFont" \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    $site_4_0.men51 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Notebook" 
    $site_4_0.men51 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Page" 
    $site_3_0.men50 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Open (Ctrl + O)" 
    $site_3_0.men50 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Save(Ctrl +S)" 
    $site_3_0.men50 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Save As.." 
    $site_3_0.men50 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Close.." 
    
set site_3_0 $top.m49
    $top.m49 add cascade \
        -menu "$top.m49.men52" -activebackground {} -activeforeground {} \
        -background {} -compound left -font {} -foreground {} -label "Edit" 
    menu "$site_3_0.men52" \
        -activebackground beige -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font "TkMenuFont" \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    $site_3_0.men52 add command \
        -command "#" -compound left -label "Undo (Ctrl +Z)" 
    $site_3_0.men52 add command \
        -command "#" -compound left -label "Redo (Ctrl + Y)" 
    $site_3_0.men52 add command \
        -command "#" -compound left -label "Paste (Ctrl +V)" 
    
set site_3_0 $top.m49
    $top.m49 add cascade \
        -menu "$top.m49.men47" -activebackground {} -activeforeground {} \
        -background {} -compound left -font {} -foreground {} \
        -label "Options" 
    menu "$site_3_0.men47" \
        -activebackground beige -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font "TkMenuFont" \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    
set site_4_0 $site_3_0.men47
    $site_3_0.men47 add cascade \
        -menu "$site_3_0.men47.men48" -activebackground {} \
        -activeforeground {} -background {} -command "{}" -compound left \
        -font {} -foreground {} -label "Theme" 
    menu "$site_4_0.men48" \
        -activebackground beige -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font "TkMenuFont" \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    $site_4_0.men48 add radiobutton \
        -variable "menuSelectedButton" -activebackground {} \
        -activeforeground {} -background {} -command "#" -compound left \
        -font {} -foreground {} -label "Light" 
    $site_4_0.men48 add radiobutton \
        -variable "menuSelectedButton" -activebackground {} \
        -activeforeground {} -background {} -command "#" -compound left \
        -font {} -foreground {} -label "Dark" 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Sync" 
    
set site_4_0 $site_3_0.men47
    $site_3_0.men47 add cascade \
        -menu "$site_3_0.men47.men50" -activebackground {} \
        -activeforeground {} -background {} -command "{}" -compound left \
        -font {} -foreground {} -label "Connect" 
    menu "$site_4_0.men50" \
        -activebackground beige -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font "TkMenuFont" \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    $site_4_0.men50 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "GDrive" 
    $site_4_0.men50 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "OneDrive" 
    $site_4_0.men50 add command \
        -activebackground {} -activeforeground {} -background {} -command "#" \
        -compound left -font {} -foreground {} -label "Mega" 
    
set site_3_0 $top.m49
    $top.m49 add cascade \
        -menu "$top.m49.men53" -activebackground {} -activeforeground {} \
        -background {} -compound left -font {} -foreground {} -label "Help" 
    menu "$site_3_0.men53" \
        -activebackground beige -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font "TkMenuFont" \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
### SPOT dump_widget_opt A
    $site_3_0.men53 add command \
        -command "#" -compound left -label "About PyNote" 
    $site_3_0.men53 add command \
        -command "#" -compound left -label "Open Help" 
    ###################
    # SETTING GEOMETRY
    ###################

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

