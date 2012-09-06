gsettings get org.gnome.desktop.background ~/Picture/nature.jpg # get backgroud picture file name
gsettings set org.gnome.desktop.background ~/Picture/nature.jpg # set backgroud picture file name

gconftool-2 -t string -s /desktop/gnome/background/picture_filename <path> # set backgroud picture file name
gconftool-2 -t string -s /desktop/gnome/background/picture_option <option> # set backgroud picture file name option = none, wallpaper, centered, scaled, stretched, zoom, spanned
