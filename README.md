Step For Make Packet Injection From Your Device

Use Security OS Such as Kali-linux / Parrot OS

* Step 1 :
  Download This Bash File.
* Step 2 :
  Enable The Monitor Mode By Using
  sudo airmon-ng start wlan0mon (Replace With Your Default Adpater)
* Step 3 :
  Check the Access Points Which Available.
  sudo airodump-ng wlan0mon
* Step 4 :
  Now edit the bash File which Downloaded,Using nano,vim update the Bssid With Replacing Which You captured From Previous Step.and Also The Channel ids
* Step 5 :
  Also You can edit hwo many Packets Do you want to inject for those Networks.
  Save The Bash Script.
* Step 6 :
  Finally Execute The bash File Using
  Sudo ./packetinjection.sh


  Enjoy ScriptKiddies !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  Developed By Sandeepa Bandara
