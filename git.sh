#!/bin/bash
#comandos
apt install git-all
clear
sleep 2
echo "GIT"
sleep 1
read -p "NOME: " nome
sleep 1
read -p "EMAIL: " email
sleep 1
echo "$nome\n$email"
read -p "Esta Correto?[s] ou [n]: " resposta
if [ $resposta == s ];then
 clear
 git config --global user.name "$nome"
 git config --global user.email "$email"
fi
if [ $resposta == S ];then
 clear
 git config --global user.name "$nome"
 git config --global user.email "$email"
fi
if [ $resposta == n ];then
 read -p "NOME: " nome
 read -p "EMAIL: " email
 git config --global user.name "$nome"
 git config --global user.email "$email"
fi
if [ $resposta == N ];then
 echo "Nao erre dessa vez!"
 read -p "NOME: " nome
 read -p "EMAIL: " email
 git config --global user.name "$nome"
 git config --global user.email "$email"
fi
sleep 2
clear
git config --global core.editor "code --wait"
apt install code-oss -y
sleep 1
clear
sleep 2
echo -e "dê enter na primeira pergunta\ncoloque a senha e repita\nOBS:DIGITE COM CUIDADO E LEMBRE-SE DESSA SENHA"
ssh-keygen -t rsa -b 4096 -C "$email"
sleep 2
clear
echo "iniciando Servico SSH..."
eval "$(ssh-agent -s)"
if [ "$?" == 0 ]; then                          echo "sucess"
else
 echo "ocorreu algum erro certifique-se de que>
fi
echo "Coloque a senha que vc definiu antes"
ssh-add ~/.ssh/id_rsa
sleep 1
echo "OK"
sleep 1
clear
echo "ENTRE NESSE LINK DO GIT HUB"
echo "https://github.com/settings/keys"
echo "crie uma nova chave ssh e cole essa chave"
res=$(cd $HOME && cat .ssh/id_rsa.pub)
echo ""
echo "------------CHAVE------------"
echo $res
echo "-----------------------------"
