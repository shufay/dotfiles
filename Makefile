sync:
	cp ./tmux.conf		~/.tmux.conf
	cp ./bashrc			~/.bashrc
	cp ./profile		~/.profile
	cp ./bash_profile	~/.bash_profile
	cp ./bash_aliases	~/.bash_aliases
	cp ./rootrc			~/.rootrc
	cp ./vimrc			~/.vimrc
	cp ./gitconfig		~/.gitconfig

push:
	git push origin

