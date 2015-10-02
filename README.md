# my_setup

This is my development environment scripted in Ruby.
Documentation steps is written for Ubuntu environment.

## Prerequisites

* Install Ruby
* Install Git
* Take ownership of /usr/local
```bash
sudo apt-get install ruby-full
sudo agt-get install git
sudo chown -R $USER /usr/local
```

## Installation

* Run from terminal:
```bash
git clone git@github.com:wllsln/my_setup.git ~/my_setup
cd my_setup
ruby install.rb
```
* You may need to add zsh to /etc/shells for chsh to accept it
```bash
command -v zsh | sudo tee -a /etc/shells
```
Ubuntu Terminal will not reflect shell change until login.

## Troubleshooting

* If you are getting the "C++ preprocessor" error, check if you have gcc/g++ installed and install if necessary.
```bash
which gcc-4.8
which g++-4.8
sudo apt-get install gcc-4.8
sudo apt-get install g++-4.8
```
* May need to symlink some system commands and take ownership for cask
```bash
sudo ln -s /bin/readlink /usr/bin/readlink
sudo ln -s /bin/chown /usr/bin/chown
sudo chown -R $USER:staff /opt/homebrew-cask
```

## License

The MIT license.

Copyright (c) 2014 Kevin Tham

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
