cd; wget http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
cp dotfiles/.env.yml miniconda/env.yml
cd miniconda; conda env create -f env.yml


