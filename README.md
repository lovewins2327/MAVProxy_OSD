![GitHub Actions](https://github.com/ardupilot/MAVProxy/actions/workflows/windows_build.yml/badge.svg)

## MAVProxy_OSD

This is a fork of MAVProxy ground station written in python. 

This MAVProxy_OSD is edited from MAVProxy horizon module
(https://ardupilot.org/mavproxy/docs/modules/horizon.html)

Please see https://ardupilot.org/mavproxy/index.html for more information

This ground station was developed as part of the CanberraUAV OBC team
entry

## Installation of MAVProxy_OSD 
1) download codes from this git
$ git clone https://github.com/lovewins2327/MAVProxy_OSD.git ( horizon module is edited for osd )
3) open terminal in the folder, and run $ sudo python3 setup.py install
4) to set gnome window transparent, making gtk.css and type followings

$ sudo nano ~/.config/gtk-3.0/gtk.css

      *{ 

      background-color:transparent; 

      opacity: 1; 

      } /* transparent OSD window */ 

5) restart gnome shell and run MAVProxy osd


      $ killall -3 gnome-shell 


      $ mavproxy.py --master=udp:127.0.0.1:14550 --cmd='module load horizon;'

6) maximize MAVProxy osd window on the maximized GStreamer window. enjoy osd in ubuntu!

    if you want to change interface of OSD, you could edit python files 

- mavproxy_horizon.py in /MAVProxy_OSD/MAVProxy/modules folder

- wxhorizon.py, wxhorizon_ui.py, wxhorizon_utill.py in /MAVProxy_OSD/MAVProxy/modules/lib folder


License
-------

MAVProxy is released under the GNU General Public License v3 or later


Maintainers
-----------

The best way to discuss MAVProxy with the maintainers is to join the
mavproxy channel on ArduPilot discord at https://ardupilot.org/discord

Lead Developers: Andrew Tridgell and Peter Barker

Windows Maintainer: Stephen Dade

MacOS Maintainer: Rhys Mainwaring
