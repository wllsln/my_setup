require 'singleton'

class Brew
  include Singleton

  def provision
    if File.exist?('/usr/local/bin/brew')
      puts "found homebrew installation"
    else
      puts "installing linuxbrew"
      system %Q{ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"}
      brewfile = ENV['HOME'] + '/.linuxbrew/bin/brew'
      File.symlink(brewfile, '/usr/local/bin/brew')  # requires chown of /usr/local/bin
    end
  end

  def ruby_setup
    puts "installing ruby"
    system "brew update"
    system "brew install ruby"
  end

  def bundle
    puts "installing system dependenies via homebrew"
    system "brew bundle"
  end
end
