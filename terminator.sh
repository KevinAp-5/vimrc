echo "Instalando terminator"
sudo apt install terminator -y
mkdir -p $HOME/.config/terminator/plugins
wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"

echo "from os import system
a = '=' * 50
print(a)
print('Instale o tema dracula no seu terminator e feche o terminator')
print(a)
system('terminator &')
input('''APERTA ENTER QUANDO TERMINAR
''')
">a.py
python3 a.py
rm a.py
cd ~/.config/terminator
mv config old_config
cp ~/auto_config/terminator/config .
cd ~
exit
echo "update"
sudo apt update
