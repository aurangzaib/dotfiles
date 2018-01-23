# install miniconda
cd; wget http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"

# copy python 2 and 3 environments config
cp dotfiles/env_p352.yml miniconda/env_p352.yml
cp dotfiles/env_p279.yml miniconda/env_p279.yml
cd miniconda; 

# create python 2 and 3 environments
conda env create -f env_p352.yml
conda env create -f env_p352.yml

