# DBus stuff w/GTK3
export NO_AT_BRIDGE=1

# ICC
source /opt/intel/mkl/bin/mklvars.sh intel64
source /opt/intel/bin/compilervars.sh intel64

# CASM path stuff
export CASMBIN="$HOME/.local/bin"
export CASMPY="$HOME/.local/lib/python2.7/site-packages"

#alias as argument Set arch flags; we're a 64 bit OS so there's no reason to not compile for it
export ARCHFLAGS="-arch x86_64"

# Fixing the path
export PATH="$HOME/.local/bin:$HOME/Scripts:$HOME/Research/bin:/opt/intel/bin:$HOME/bin:$PATH"
export LIBRARY_PATH="$HOME/.local/lib:$LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/.local/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="$HOME/.local/lib:$DYLD_LIBRARY_PATH"
export CUDA_HOME="/usr/local/cuda"

# Colors!
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
alias ls='ls --color=always'
alias grep='grep --color=auto'
alias fixscreen='xrandr --auto --output DVI-D-1 --right-of DVI-I-1'
eval $(dircolors -b)

# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[01;30m\]" # foreground black
FRED="\[\033[01;31m\]" # foreground red
FGRN="\[\033[01;32m\]" # foreground green
FYEL="\[\033[01;33m\]" # foreground yellow
FBLE="\[\033[01;34m\]" # foreground blue
FMAG="\[\033[01;35m\]" # foreground magenta
FCYN="\[\033[01;36m\]" # foreground cyan
FWHT="\[\033[01;37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

# Fixing the tab and window titles
PS1="$FRED \t $FCYN\u$FWHT@$FYEL\h$FWHT:\w\n $FRED\$ >$RS "
PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
export PATH=$PATH:~/.cabal/bin:~/.xmonad/bin

# Fixing Java apps in XMonad
export _JAVA_AWT_WM_NONREPARENTING=1


# unregister broken GHC packages. Run this a few times to resolve dependency rot in installed packages.
# ghc-pkg-clean -f cabal/dev/packages*.conf also works.
function ghc-pkg-clean() {
    for p in `ghc-pkg check $* 2>&1  | grep problems | awk '{print $6}' | sed -e 's/:$//'`
    do
        echo unregistering $p; ghc-pkg $* unregister $p
    done
}

# remove all installed GHC/cabal packages, leaving ~/.cabal binaries and docs in place.
# When all else fails, use this to get out of dependency hell and start over.
function ghc-pkg-reset() {
    read -p 'erasing all your user ghc and cabal packages - are you sure (y/n) ? ' ans
    test x$ans == xy && ( \
        echo 'erasing directories under ~/.ghc'; rm -rf `find ~/.ghc -maxdepth 1 -type d`; \
        echo 'erasing ~/.cabal/lib'; rm -rf ~/.cabal/lib; \
        # echo 'erasing ~/.cabal/packages'; rm -rf ~/.cabal/packages; \
        # echo 'erasing ~/.cabal/share'; rm -rf ~/.cabal/share; \
        )
}

alias cabalupgrades="cabal list --installed  | egrep -iv '(synopsis|homepage|license)'"

PERL_MB_OPT="--install_base \"/home/liz/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/liz/perl5"; export PERL_MM_OPT;
