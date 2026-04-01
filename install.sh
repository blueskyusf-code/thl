echo [MakT Created By Blueskyteam] [Repo in Abril 2026]
sleep 2
echo [*] ALERT: Use Termux because otherwise the commands will be incompatible!
sleep 2
echo [*] Creating Module SH...
sleep 1
rm -rf $PREFIX/bin/MakT 2>/dev/null
sleep 1

cat << 'EOF' > $PREFIX/bin/MakT
#!/data/data/com.termux/files/usr/bin/sh
echo "[*] Personalizing terminal..."
read -p "What Your Name?: " name
read -p "What's your favorite color?: " color

case $color in
    gray) col="\[\e[1;30m\]"; bg_col="\[\e[0;30m\]" ;;
    "light blue") col="\[\e[1;36m\]"; bg_col="\[\e[0;36m\]" ;;
    "dark blue") col="\[\e[1;34m\]"; bg_col="\[\e[0;34m\]" ;;
    white) col="\[\e[1;37m\]"; bg_col="\[\e[0;37m\]" ;;
    purple) col="\[\e[1;35m\]"; bg_col="\[\e[0;35m\]" ;;
    pink) col="\[\e[1;35m\]"; bg_col="\[\e[0;35m\]" ;;
    violet) col="\[\e[1;35m\]"; bg_col="\[\e[0;35m\]" ;;
    red) col="\[\e[1;31m\]"; bg_col="\[\e[0;31m\]" ;;
    yellow) col="\[\e[1;33m\]"; bg_col="\[\e[0;33m\]" ;;
    orange) col="\[\e[1;33m\]"; bg_col="\[\e[0;33m\]" ;;
    "calm blue") col="\[\e[1;36m\]"; bg_col="\[\e[0;36m\]" ;;
    *) col="\[\e[1;37m\]"; bg_col="\[\e[0;37m\]" ;;
esac

reset="\[\e[0m\]"

echo "clear" >> ~/.bashrc
echo "echo [Blueskyteam Plugin]" >> ~/.bashrc
# O Nome fica com 'col' (vibrante) e o @MakT fica com 'bg_col' (versão mais escura/cinza)
echo "export PS1=\"$col\$name$bg_col@MakT$reset \$ \"" >> ~/.bashrc
exec bash
EOF

chmod +x $PREFIX/bin/MakT
sleep 1
echo [*] Installed!
sleep 2
echo [Note] Type MakT to run.
