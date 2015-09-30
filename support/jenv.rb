require 'singleton'

class Jenv
  include Singleton

  def global(version)
    if `jenv global | grep #{version}`.empty?
      puts "Setting java #{version} as the globally default java version"
      system "jenv global #{version}"
    else
      puts "found java #{version} as globally default java version"
    end
  end

  def installed?
    !`which rbenv`.empty?
  end

  def zsh_init_cmd
    %Q{if which rbenv > /dev/null; then eval "$(jenv init -)"; fi}
  end
end
