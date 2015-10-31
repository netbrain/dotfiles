FROM netbrain/go

RUN git clone https://github.com/vim/vim

ENV VIM_HOME=$TOOLS_PATH/vim

WORKDIR $VIM_HOME

RUN ./configure \
            --prefix=$VIM_HOME \
            --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-cscope

RUN make && make install

ENV PATH=$PATH:$VIM_HOME/bin

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ADD .vimrc $HOME/.vimrc

RUN vim -i NONE -c VundleInstall -c GoInstallBinaries -c quitall

RUN (sudo apt-get -y install cmake exuberant-ctags && cd $HOME/.vim/bundle/YouCompleteMe && ./install.py)

WORKDIR $HOME

CMD vim $GOPATH
