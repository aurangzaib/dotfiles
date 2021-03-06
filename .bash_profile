# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Android setup
export ANDROID_HOME="/Users/aurangzaib/Library/Android/sdk/" #for OSX && a/f installing Android Studio
export PATH="$PATH:$ANDROID_HOME/tools" # android tools
export PATH="$PATH:$ANDROID_HOME/platform-tools" # android platform tools

# make
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/bin/c++:/usr/bin/make

# mongodb
export PATH="/usr/local/mongodb/bin:$PATH"

# xampp
export PATH=/opt/local/bin:/opt/local/sbin:/Applications/xampp/xamppfiles/bin:$PATH

# usr/local
export PATH="/usr/local/bin:$PATH"

# JRE and JDK
# after installing jdk & jre from oracle site
# export JAVA_HOME=$(/usr/libexec/java_home)
# export JDK_HOME=$(/usr/libexec/java_home)

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,variables,aliases_old,functions,extra,aliases,krones}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
# if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
# 	source "$(brew --prefix)/etc/bash_completion";
# elif [ -f /etc/bash_completion ]; then
# 	source /etc/bash_completion;
# fi;

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi


# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# conda python
export PATH="/Users/Siddiqui/Miniconda/bin:$PATH"
export PATH="/Users/Siddiqui/Miniconda/envs/siddiqui/bin:$PATH"
source activate siddiqui

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/siddiqui/.google-cloud-sdk/path.bash.inc' ]; then source '/Users/siddiqui/.google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/siddiqui/.google-cloud-sdk/completion.bash.inc' ]; then source '/Users/siddiqui/.google-cloud-sdk/completion.bash.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Siddiqui/Miniconda/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Siddiqui/Miniconda/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Siddiqui/Miniconda/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Siddiqui/Miniconda/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

