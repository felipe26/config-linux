sudo apt-get update
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install mariadb-server -y
sudo apt-get install php7.0-cli -y
sudo apt-get install php7.0-mysql -y
sudo apt-get install php7.0-dom -y
sudo apt-get install php7.0-curl -y
sudo apt-get install php7.0-mcrypt -y
sudo apt-get install php7.0-mbstring -y		
sudo apt-get install composer -y		
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo rm -r ~/.bash
mkdir ~/.bash
cd ~/.bash
sudo rm -r ~/.bash/git-aware-prompt
git clone git://github.com/jimeh/git-aware-prompt.git

sed -i '1isource "${GITAWAREPROMPT}/main.sh"\' ~/.bashrc
sed -i '1iexport GITAWAREPROMPT=~/.bash/git-aware-prompt\' ~/.bashrc
echo 'export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "' >> ~/.bashrc

clear
echo "Concluído"
exit