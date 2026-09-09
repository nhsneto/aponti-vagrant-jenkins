# Atualiza os pacotes e instala dependências básicas
sudo apt update
sudo apt install -y curl fontconfig

# Instalação do Node.js (versão 24)
curl -fsSL https://deb.nodesource.com/setup_24.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install -y nodejs

# Instalação do Java 21 (obrigatório para o Jenkins atual)
sudo apt install -y openjdk-21-jre
java -version

# Instalação do Jenkins (versão stable)
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install -y jenkins