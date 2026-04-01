echo [Thl Created By Blueskyteam] [Repo in Abril 2026]
sleep 2
echo [*] Creating Module SH...
sleep 1
echo [*] in case exists file, delete file
sleep 2
rm -rf $PREFIX/bin/Thl2>/dev/null
sleep 1
cat <<EOF>> $PREFIX/bin/Thl
echo [*] Allow him to do what he commands.
sleep 3
termux-setup-storage
sleep 2
mkdir /sdcard/Thl
mkdir /sdcard/Thl/cache
mkdir /sdcard/Thl/files
EOF
sleep 5
echo [*] Adding execute permission...
chmod +x $PREFIX/bin/Thl
sleep 1
echo [*] Installed!
sleep 2
echo [Note] Type Thl to run.
