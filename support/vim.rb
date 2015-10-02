require 'singleton'
require 'fileutils'

class Vim
  include Singleton

  VIMRC_FILE = File.join(ENV['HOME'], ".vimrc")

  def provision
    if File.exist?(VIMRC_FILE)
      puts "found vim settings"
    else
      puts "copy basic .vimrc file"
      system %Q{curl -o "$HOME/.vimrc" "https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim"} 
    end
  end
end
