# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi
# Xinming Wu's path.
export PATH=$PATH:/Applications/MATLAB_R2013b.app/bin 
export PATH=$PATH:/Applications/eclipse 
export PATH=$PATH:~/Home/bin
export PATH=$PATH:./
export HOSTNAME='xinwu@cwp'

export ANT_HOME=/Users/xinwu/Home/x4mAnt
export ECLIPSE_HOME=/Users/xinwu/Home/x4mTools/eclipse
export JAVA_HOME=/Users/xinwu/Home/x4mTools/java
export JAVA6_HOME=/Users/xinwu/Home/x4mTools/java6

export X4M_HOME=/Users/xinwu/Home/x4m/deploy

export PATH=$ANT_HOME/bin:$JAVA_HOME/bin:$PATH

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -laptr'
alias lz='ls -lSr'
alias lap='ls -lap'
alias clc='clear'
alias gm='gvim'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias 777='chmod 777'
alias eclimd='/Applications/eclipse/eclimd'
alias x4m='~/Home/x4m/deploy/RunX4MDebug'
alias cdh='cd ~/Home/'
alias cdjtk='cd ~/Home/research/jtk/'
alias cdidh='cd ~/Home/research/idh/'
alias cdipf='cd ~/Home/research/ipf/'
alias cdxmw='cd ~/Home/research/xmw/'
alias cddep='cd ~/Home/x4m/deploy'
alias cdsei='cd ~/Home/trunk2/seismic'
alias cdhe='cd ~/Home/trunk2/horizonExtraction/src/com/x4m/horizonExtraction'
alias cdhi='cd ~/Home/trunk2/horizoninterpretation/src/com/x4m/horizoninterpretation'
alias cdint='cd ~/Home/trunk2/seismicinterpretation'
alias cdintui='cd ~/Home/trunk2/seismicinterpretationui'
alias cdunc='cd ~/Home/trunk2/seismicinterpretation/src/com/x4m/seismicinterpretation/unconformity'
alias cduncui='cd ~/Home/trunk2/seismicinterpretationui/src/com/x4m/seismicinterpretationui/unconformity'
#PS1='\h:\W \u\$ '

# Prompt
BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
PS1="${RED}\h:${GREEN}\W ${BLUE}\$ ${NORMAL}"

# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
	local SEARCH=' '
	local REPLACE='%20'
	local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
	printf '\e]7;%s\a' "$PWD_URL"
    }
    PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi
								    
