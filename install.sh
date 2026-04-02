#!/data/data/com.termux/files/usr/bin/bash
echo "[MakT Created By Blueskyteam] [Repo in Abril 2026]"
sleep 2
echo "[*] ALERT: Use Termux because otherwise the commands will be incompatible!"
sleep 2
echo "[*] Creating Module SH..."
sleep 1

# Remove versão antiga do MakT
rm -rf $PREFIX/bin/MakT 2>/dev/null
sleep 1

# Cria o novo script MakT
cat << EOF > $PREFIX/bin/MakT
#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Personalizing terminal..."
read -p "What is your name?: " name
read -p "What's your favorite color?: " color

case \$color in
    cinza) col="\\[\033[1;30m\\]" ;;
    azul-claro) col="\\[\033[1;36m\\]" ;;
    azul-escuro) col="\\[\033[0;34m\\]" ;;
    branco) col="\\[\033[1;37m\\]" ;;
    roxo) col="\\[\033[0;35m\\]" ;;
    rosa) col="\\[\033[1;35m\\]" ;;
    violeta) col="\\[\033[1;35m\\]" ;;
    vermelho) col="\\[\033[1;31m\\]" ;;
    amarelo) col="\\[\033[1;33m\\]" ;;
    laranja) col="\\[\033[0;33m\\]" ;;
    azul-calmo) col="\\[\033[0;36m\\]" ;;
    *) col="\\[\033[1;37m\\]" ;;
esac

reset="\\[\033[0m\\]"

# Configura o prompt permanentemente
echo "clear" >> ~/.bashrc
echo "echo [Blueskyteam Plugin]" >> ~/.bashrc
echo "export PS1=\"\$col\$name\$reset@MakT \$ \"" >> ~/.bashrc

# Aplica a mudança na sessão atual
exec bash
EOF

# Torna o script executável
chmod +x $PREFIX/bin/MakT
sleep 1

echo "[*] Installed!"
sleep 2
echo "[Note] Type MakT to run."
