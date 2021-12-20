# PersonalNvim

- Este es mi archivo personalizado para el editor [Nvim](https://neovim.io/), esta configurado en WSL2 y algunas alias en la terminal. 

- Evidentemente funciona para mac y ubuntu.

## Imagenes
![](https://i.ibb.co/GQGjshk/img1.png)


![](https://i.ibb.co/w6BVrwF/img2.png)


### Update

Algunas veces actualizo el repositorio. Si deseas recibir los cambios, realiza lo siguiente.

```sh
git pull
cp init.vim ~/.config/nvim/
```

### Comandos vim-plug 

Ejecútelos para instalar los complemetentos en el init.vim.

* Instalar plugins: ':PlugInstall' en nvim
* Actualizar plugins: ':PlugUpdate' en nvim
* Eliminar plugins no utilizados: ':PlugClean' en nvim
* Actualizar vim-plug en sí: ':P lugUpgrade' en nvim

## Alias vim

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