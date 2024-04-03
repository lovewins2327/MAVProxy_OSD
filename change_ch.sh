now_ch="$(awk -F " = " '$1 == "wifi_channel" {print $2}' /etc/wifibroadcast.cfg)"

if [ "$now_ch" = 149 ]; then                              
  new_ch="165"                                           
else                                                     
  new_ch="149"                                           
fi                                                       
                                                         
sed -i "s/$now_ch/$new_ch/" /etc/wifibroadcast.cfg

systemctl restart wifibroadcast@gs
