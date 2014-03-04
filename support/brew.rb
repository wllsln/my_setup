require 'singleton'

class Brew
  include Singleton

  def provision
    if File.exist?('/usr/local/bin/brew')
      puts "found homebrew installation"
    else
      puts "installing homebrew"
      system %Q{ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"}
    end
  end

  def bundle
    puts "installing system dependenies via homebrew"
    system "brew bundle Brewfile"
  end
end
