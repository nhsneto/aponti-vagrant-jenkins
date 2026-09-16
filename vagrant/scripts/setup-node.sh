# Excecuta a instalacao do Node.js como usuario vagrant ao inves de root
sudo -u vagrant -i bash -c '
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.7/install.sh | bash;
source "$HOME/.nvm/nvm.sh";
nvm install 24;
node -v;
npm -v;
'

echo "Provisionamento do Node.js concluído"
