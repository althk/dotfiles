# dotfiles
dotfiles for personal dev environment (Debian x64). Simple and basic.

Environment: Debian (Testing) x64

## Layout
- dotfiles
  - rc
    * basic setup needed for shell
  - shell
    * used by the rc scripts to initialize the env, keeping extras here
  - install
    * scripts to install additional essential packages
  - (other pkgs, e.g., tmux)
    * specific packages with their dotfiles which need to be copied to ~

## Setup
The only software dependency is git (although strictly speaking, the repo can be downloaded using wget/curl and a direct download link)

### Using git

```shell
$ sudo apt-get install -y git
$ git clone https://github.com/althk/dotfiles.git ~/.dotfiles
$ ~/.dotfiles/setup.sh
```

## References
[Getting Started With Dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789) - The framework for this repo is based on this article, and the [author's dotfiles repo](https://github.com/webpro/dotfiles)
[dotfiles.github.io](http://dotfiles.github.io/) - Has everything on dotfiles and more
