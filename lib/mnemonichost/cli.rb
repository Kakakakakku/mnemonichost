require 'thor'

module Mnemonichost
  class CLI < Thor

    def initialize(*args)
      super
      @words = File.read(File.expand_path('../wordlist.txt', __FILE__)).split
    end

    desc 'gen', 'Generate sample host name by mnemonic wordlist.'
    def gen(size)
      size.to_i.times do
        puts @words.sample + '.example.com'
      end
    end

  end
end
