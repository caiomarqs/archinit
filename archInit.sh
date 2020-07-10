#Arch init programs
#ZSH and packgesmanagers
sudo pacaman -S zsh flatpak && \
sudo chsh -s $(which zsh) && \
wget https://raw.githubusercontent.com/caiomarqs/zshconfig/master/.zshrc -P ~/ && \
mkdir ~/Programs && cd ~/Programs && \
git clone https://aur.archlinux.org/snapd.git && cd snapd && \
sudo makepkg -si --noconfirm && \
sudo systemctl enable --now snapd.socket && \
sudo ln -s /var/lib/snapd/snap /snap && \
#Fonts
sudo pacman -S --noconfirm gnu-free-fonts ttf-roboto ttf-ubuntu-font-family ttf-hack ttf-fira-code ttf-dejavu noto-fonts && \
cd ~/Programs && \
git clone https://aur.archlinux.org/ttf-ms-fonts.git && \
cd ttf-ms-fonts && sudo makepkg -si --noconfirm && \
cd ~/Programs && \
git clone https://aur.archlinux.org/ttf-monaco.git && \
cd ttf-monaco && sudo makepkg -si --noconfirm && \
cd ~/Programs && \
git clone https://aur.archlinux.org/ttf-mac-fonts.git && \
cd ttf-mac-fonts && sudo makepkg -si --noconfirm && \
cd ~/Programs && \
git clone https://aur.archlinux.org/otf-san-francisco-pro.git && \
cd otf-san-francisco-pro && sudo makepkg -si --noconfirm && \
#Programing Languages
sudo pacman -Syy --noconfirm && sudo pacman -Su --noconfirm && pacman -S jdk8-openjdk --noconfirm && \
sudo -S --noconfirm nodejs-lts-erbium npm yarn && sudo npm -g install npm && \
npm install -g typescript && \
#Programs
sudo snap install code --classic && \
sudo snap install android-studio --classic && \
sudo snap install intellij-idea-ultimate --classic && \
sudo snap install eclipse --classic && \
#Test instalations
cd ~ && touch ~/testInstalation.txt && \
echo "---PackgeManagres--- \n" >> ~/testInstalation.txt && \
flatpak --version >> ~/testInstalation.txt && \
snap --version >> ~/testInstalation.txt && \
echo "\n---Fonts--- \n" >> ~/testInstalation.txt && \
cd /usr/share/fonts && ls >> ~/testInstalation.txt && ls -laR >> ~/testInstalation.txt && \
cd ~ && \
echo "\n---Programing Languages---" >> ~/testInstalation.txt && \
java -version &>> ~/testInstalation.txt && javac -version &>> ~/testInstalation.txt && \
echo 'Node Version:' >> ~/testInstalation.txt && node --version >> ~/testInstalation.txt &&\
echo 'Npm Version:' >> ~/testInstalation.txt && npm --version >> ~/testInstalation.txt &&\
echo 'Yarn Version:' >> ~/testInstalation.txt && yarn --version >> ~/testInstalation.txt &&\
echo 'Typescript Version:' >> ~/testInstalation.txt && tsc --version >> ~/testInstalation.txt &&\
echo "\n---Programs---" >> ~/testInstalation.txt && \
echo 'Code:' >> ~/testInstalation.txt && snap info code | grep installed >> ~/testInstalation.txt && \
echo 'Android Studio:' >> ~/testInstalation.txt && snap info android-studio | grep installed >> ~/testInstalation.txt && \
echo 'IntelliJ:' >> ~/testInstalation.txt && snap info intellij-idea-ultimate | grep installed >> ~/testInstalation.txt && \
echo 'Eclipse:' >> ~/testInstalation.txt && snap info eclipse | grep installed >> ~/testInstalation.txt && \
cat ~/testInstalation.txt | more