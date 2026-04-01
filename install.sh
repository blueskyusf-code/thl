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

cat << 'EOF' > $PREFIX/bin/MakT
#!/data/data/com.termux/files/usr/bin/sh
echo "[*] Personalizing terminal..."
read -p "What Your Name?: " name
echo "clear" >> ~/.bashrc
echo "echo [Blueskyteam Plugin]" >> ~/.bashrc
echo "export PS1=\"\$name@MakT \$ \"" >> ~/.bashrc
exec bash
EOF

sleep 5
echo [*] Adding execute permission...
chmod +x $PREFIX/bin/MakT
sleep 1
echo [*] Installed!
sleep 2
echo [Note] Type MakT to run.
