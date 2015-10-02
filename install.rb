require_relative 'support/brew'
require_relative 'support/jar'
require_relative 'support/jenv'
require_relative 'support/rbenv'
require_relative 'support/zsh'

# singleton support objects
brew = Brew.instance
jar = Jar.instance
jenv = Jenv.instance
rbenv = Rbenv.instance
zsh = Zsh.instance

brew.provision
brew.install_ruby
brew.bundle

rbenv.install('2.2.3')
rbenv.global('2.2.3')

# jar.download('http://archive.apache.org/dist/avro/avro-1.7.6/java/avro-tools-1.7.6.jar')

zsh.provision
zsh.make_default
## zsh.export('JAVA_OPTS', '-Xms256M -Xmx512M -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode -XX:+DoEscapeAnalysis -XX:+UseBiasedLocking -XX:PermSize=64M -XX:MaxPermSize=256M'
## zsh.export('SBT_OPTS', '-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M')
zsh.rcfile_include(rbenv.zsh_init_cmd)
zsh.rcfile_include(jenv.zsh_init_cmd)

system "pip install -r pip_requirements.txt"
