
Encoding.default_external = Encoding::UTF_8

if ENV['RAILS_ENV'] === 'development'
  IRB.conf[:IRB_NAME] = "\033[1;31m#{IRB.conf[:IRB_NAME]}\033[0m"
elsif ENV['RAILS_ENV'] === 'production'
  IRB.conf[:IRB_NAME] = "\033[1;32m#{IRB.conf[:IRB_NAME]}\033[0m"
else
  IRB.conf[:IRB_NAME] = "\033[1;31m#{IRB.conf[:IRB_NAME]}\033[0m"
  require 'fileutils'
  require 'interactive_editor'
  require 'colorize'
end

sym = "♫".green

IRB.conf[:PROMPT][:MASTER] = {
  :AUTO_INDENT => true,
  :PROMPT_I => "%N.%m #{sym} ",
  :PROMPT_S => "%N.%m #{sym} ",
  :PROMPT_C => "",
  :RETURN => "  ∟>> %s\n"
}

module Kernel
  def q
    exit
  end
  def cd(path = ENV["HOME"])
    FileUtils.cd path
    "#{`pwd`.chomp}"
  end
end

IRB.conf[:PROMPT_MODE] = :MASTER
IRB.conf[:SAVE_HISTORY] = 10000
