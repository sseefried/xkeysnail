#!/bin/bash

while sleep 1
do
    gdbus call -e -d org.gnome.Shell -o /org/gnome/Shell -m org.gnome.Shell.Eval global.get_window_actors\(\)[`gdbus call -e -d org.gnome.Shell -o /org/gnome/Shell -m org.gnome.Shell.Eval global.get_window_actors\(\).findIndex\(a\=\>a.meta_window.has_focus\(\)===true\) | cut -d"'" -f 2`].get_meta_window\(\).get_wm_class\(\) | cut -d'"' -f 2 > /tmp/active_win
done

# gdbus call --session -d org.gnome.Shell -o /org/gnome/Shell -m org.gnome.Shell.Eval global.get_window_actors\(\).findIndex\(a\=\>a.meta_window.has_focus\(\)===true\) | cut -d"'" -f 2

# gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.freedesktop.DBus.Properties.Get org.gnome.Shell ShellVersion