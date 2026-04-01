echo [MakT Created By Blueskyteam] [Repo in Abril 2026]
sleep 2
echo [*] ALERT: Use Termux because otherwise the commands will be incompatible!
sleep 2
echo [*] Creating Module SH...
sleep 1
echo [*] in case exists file, delete file
sleep 2
rm -rf $PREFIX/bin/MakT 2>/dev/null
sleep 1
cat <<EOF>> $PREFIX/bin/MakT
echo [*] Personalizing terminal...
read -p "What You Name?: " name
cat <<EOF>> ~/.bashrc
clear
echo [Blueskyteam Plugin | 
export PS1="MakT@$NAME "
EOF

EOF
sleep 5
echo [*] Adding execute permission...
chmod +x $PREFIX/bin/MakT
sleep 1
echo [*] Installed!
sleep 2
echo [Note] Type MakT to run.
