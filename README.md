# Entorno de desarrollo Nvim y WSL2
 
 
**Índice**  
- [Imagenes](#imagenes)
- [Configuración de WSL2](#configuracion)
  - [Instalación](#instalar)
  - [Shell ZSH](#zsh)
  - [Fuente](#fuentes)
    - [Instalar](#pasos)
- [Nvim](#nvim)
  - [Clonar](#clonar)
  - [Comandos vim-plug](#comandos)
  - [Alias](#Alias)
- [Referencias](#referencias)
- [Licencia](#licencia)
 
 
- Este es mi archivo personalizado para el editor [Nvim](https://neovim.io/), esta configurado en WSL2. También cuenta con algunas alias para la terminal.
 
- Funciona para Ubuntu Linux y MacOS.
 
# Imagenes
![](https://i.ibb.co/df3YpSB/ejem1.png)
 
 
![](https://i.ibb.co/Tm44PXx/ejem2.png)
 
 
# Configuracion
 
## Instalar
 
1. Abrimos como administrador PowerShell y ejecutamos el siguiente comando:
 
```sh
wsl --install
```
 
De forma predeterminada, la distribución de Linux instalada será Ubuntu.
 
2. Luego nos solicitará ingresar el nombre de usuario y contraseña.
 
3. Actualizamos los paquetes y listo.
 
```sh
sudo apt update && sudo apt upgrade
```
 
## ZSH
 
1. Instalar ZSH.
 
```sh
sudo apt install zsh
```
 
2. Hacer ZSH la shell predeterminada.
 
```sh
chsh -s $(which zsh)
```
 
3. Reiniciar terminal.
 
4. Seleccionar opción 0 si pregunta por seleccionar un item.
 
5. Verificar Shell: `echo $SHELL`, debería mostrar ->  `/usr/bin/zsh`
 
6. Instalamos Oh My Zsh
 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
 
7. Instalamos PowerLevel10k Theme
 
```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```
 
8. Descargamos algunos pluggins
 
```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
 
9. Editamos el archivo `~/.zshrc`
 
* Buscamos la sección de `ZSH_THEME` y reemplazamos lo siguiente:
 
```sh
ZSH_THEME="powerlevel10k/powerlevel10k"
```
 
* Agregar la siguiente línea para usar Nerd Pached:
 
```sh
POWERLEVEL9K_MODE="nerdfont-complete"
```
 
* Si quieres autocompletado habilita la siguiente opción:
 
```sh
#ENABLE_CORRECTION="true"
//Asi
ENABLE_CORRECTION="true"
```
 
10. Por ultimo, remplazamos `plugins=(git)` por `plugins=(git zsh-autosuggestions zsh-syntax-highlighting)`
 
 
## Fuentes
 
Personalmente recomiendo instalar la fuente [JetbrainsMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Lekton.zip), para realizarlo, descargamos  la fuente en la página. Sin embargo, si deseas otra fuente, puedes  ingresar a la página oficial de [NerdFonts](https://www.nerdfonts.com/font-downloads).
 
### Pasos
 
1. Descargar la fuente de preferencia en la página oficial de NerdFonts
 
2. Descomprimir **.zip**
 

3. Seleccionar todos los archivos y presionar la opción de *Instalar para todos los usuarios*
 
![](https://i.ibb.co/SPfBR96/selecionar-Fo.png)
 
4. Seleccionar la fuente en la configuración en Windows Terminal.
 
![](https://i.ibb.co/64516j3/fonts-Terminal.png)
 
### Personalizar Terminal
 
Existen distintas maneras para poder personalizar la terminal. Desde colores, imágenes de fondos y mucho más.
 
En mi caso, me gusto el efecto transparente, por eso es la que explicaré a continuación:
 
1. Abrimos el **.json de la terminal**
 
![](https://i.ibb.co/BTnvvFg/json.png)
 
2. En la sección donde se ubican las configuraciones del Perfil de Ubuntu, pegamos lo siguiente:
 
```json
            {
                "acrylicOpacity": 0.69999999999999996,
                "colorScheme": "Frost-Dark",
                "cursorColor": "#FFFFFF",
                "font":
                {
                    "face": "JetBrainsMono Nerd Font"
                },
                "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
                "hidden": false,
                "name": "Ubuntu",
                "source": "Windows.Terminal.Wsl",
                "useAcrylic": true
            }
```
 
Cabe aclarar, que la fuente en mi caso es JetBrainsMono, aquí la debes cambiar por la de tu preferencia.
 
3. En la sección de **schemes**, pegamos lo siguiente:
 
- ***Tema transparente claro***
 
```json
{
            "background": "#FFFFFF",
            "black": "#3C5712",
            "blue": "#17B2FF",
            "brightBlack": "#749B36",
            "brightBlue": "#27B2F6",
            "brightCyan": "#13A8C0",
            "brightGreen": "#89AF50",
            "brightPurple": "#F2A20A",
            "brightRed": "#F49B36",
            "brightWhite": "#741274",
            "brightYellow": "#991070",
            "cursorColor": "#FFFFFF",
            "cyan": "#3C96A6",
            "foreground": "#000000",
            "green": "#6AAE08",
            "name": "Frost",
            "purple": "#991070",
            "red": "#8D0C0C",
            "selectionBackground": "#FFFFFF",
            "white": "#6E386E",
            "yellow": "#991070"
        }
```
 
- ***Tema transparente oscuro***
 
```json
        {
            "background": "#000000",
            "black": "#3C5712",
            "blue": "#17B2FF",
            "brightBlack": "#749B36",
            "brightBlue": "#27B2F6",
            "brightCyan": "#13A8C0",
            "brightGreen": "#89AF50",
            "brightPurple": "#F2A20A",
            "brightRed": "#F49B36",
            "brightWhite": "#741274",
            "brightYellow": "#991070",
            "cursorColor": "#FFFFFF",
            "cyan": "#3C96A6",
            "foreground": "#FFFFFF",
            "green": "#6AAE08",
            "name": "Frost-Dark",
            "purple": "#991070",
            "red": "#8D0C0C",
            "selectionBackground": "#FFFFFF",
            "white": "#6E386E",
            "yellow": "#991070"
        }
```
 
Para mas temas, puedes buscar en [Aqui](https://docs.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes)
 
 
# NVIM
 
Para comprender los comandos personalizados, te recomiendo leer detenidamente cada uno, se pueden modificar a tus preferencias.
 
![](https://i.ibb.co/zn128JV/settings.png) 
 
## Clonar
 
Algunas veces actualizo el repositorio. Si deseas recibir los cambios, realiza lo siguiente.
 
```sh
git clone (URL de este repositorio)
 
cp init.vim ~/.config/nvim/
```
 
## Comandos
 
Ejecútese para instalar los complementos en el init.vim.
 
* Instalar plugins: ':PlugInstall'
* Actualizar plugins: ':PlugUpdate'
* Eliminar plugins no utilizados: ':PlugClean'
* Actualizar vim-plug en sí: ':P lugUpgrade'
 
## Alias
 
Esto se debe colocar en el archivo `.zshrc` o `bashrc`
 
 
```sh
alias vim='nvim'
alias ..='cd ..'
alias c='clear'
alias ...='cd ../../'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias update='sudo apt update && sudo apt upgrade'
alias h='history'
alias path='echo $PATH | tr : \\n'
alias gpo='git push origin'
alias gpo='git pull origin'
```
 
# Referencias
1. https://medium.com/@shivam1/make-your-terminal-beautiful-and-fast-with-zsh-shell-and-powerlevel10k-6484461c6efb
 
2. https://github.com/Optixal/neovim-init.vim
 
# Licencia
 
GNU General Public License.
