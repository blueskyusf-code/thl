echo [Thl Created By Blueskyteam] [Repo in Abril 2026]
sleep 2
echo [*] Creating Module SH...
cat <<EOF>> $PREFIX/bin/Thl
echo mod in production... [massage in abril 2026]
EOF
sleep 5
echo [*] Adding execute permission...
chmod +x $PREFIX/bin/Thl
sleep 1
echo [*] Installed!
sleep 2
echo [Note] Type Thl to run.
