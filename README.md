# Configuración de Desarrollo de **dev-solano**

¡Bienvenido a mi configuración de desarrollo! Aquí encontrarás una guía paso a paso sobre cómo configurar tu entorno de desarrollo para trabajar como un profesional. 

## Terminal
Estoy utilizando [WezTerm](https://wezfurlong.org/wezterm/), una terminal moderna y altamente configurable para sistemas operativos Unix. WezTerm ofrece muchas características útiles y una excelente experiencia de usuario.
### Linux/debian
**Configura el repositorio en tu sistema.**
```bash
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
```
**Atualiza las dependencias**
```bash
sudo apt update
```
**Instala Wezterm**
```bash
sudo apt install wezterm
```
## Shell
Mi shell preferido es [Fish](https://fishshell.com/). Fish es fácil de usar, altamente personalizable y viene con potentes características integradas, como la finalización de pestañas y el resaltado de sintaxis.

## Editor de Texto
Uso [Neovim](https://neovim.io/) como mi editor de texto principal. Neovim es una versión mejorada de Vim, con mejor rendimiento y más funcionalidades. Mi configuración de Neovim está gestionada por [LazyVim](https://github.com/johanhenselmans/lazyvim), un gestor de paquetes para simplificar la instalación y gestión de complementos.

## Herramientas de Control de Versiones

- **Git**: El sistema de control de versiones distribuido más popular.
- **LazyGit**: Una interfaz de usuario de terminal para Git, que facilita la navegación y la interacción con repositorios.

## Dependencias

- **GCC**: El compilador de C/C++.
- **Fd**: Una alternativa rápida y fácil de usar a `find`.
- **Zellij**: Un multiplexor de terminal con características avanzadas.
- **Ripgrep (rg)**: Una herramienta de búsqueda de texto rápida y eficiente.
- **Node.js y npm**: Plataforma y gestor de paquetes para JavaScript.
- **Homebrew**: El gestor de paquetes para macOS y Linux.
- **Oh My Fish**: Un framework de configuración para Fish shell.
- **Unzip**: Una herramienta de descompresión de archivos.
- **Xclip**: Una herramienta para manipular el portapapeles del sistema.

## Configuración de Fuentes

Utilizo la fuente [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads) en mi terminal y editor de texto. Esta fuente incluye iconos y glifos especiales que son útiles para la programación y la productividad en la terminal.

## Instalación

Aquí hay una guía rápida sobre cómo instalar todas las herramientas y dependencias mencionadas en este README:


## Homebrew
**Antes de instalar**
```bash
sudo apt-get install build-essential procps curl file git
```
**Para instalar**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
**Para añadir al path**
```bash
nano ~/.bashrc
```
**Agrega esta linea al final del archivo**
```bash
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
```
**Reset Shel**
```bash
source ~/.bashrc
```
### Dependencias
```bash
brew install nvim gcc fd zellij ripgrep node lazygit unzip xclip
```
## Fish 
**Para añadir al path**
```bash
nano ~/.config/fish/config.fish
```
**Agrega esta linea al final del archivo**
```bash
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
```
**Reset Shel**
```bash
source ~/.config/fish/config.fish
```



