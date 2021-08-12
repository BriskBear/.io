#!/usr/bin/env ruby

class Bash
  def self.ls(path = ".")
    ls = `ls -F #{path}`.split("\n")
    puts path
    ls
  end
  def self.la(path = ".")
    la = `ls -AF #{path}`.split("\n")
    puts path
    la
  end
  def method_missing(m, *args, &block)
    def "self.#{m}"(*args)
      Bash("#{m} #{*args}")
    end
  end
end

module BashBoss
  def bash
    self.split("\n").map!{|i| i.chomp}
  end
end

String.class_eval {include BashBoss}

def Bash(command)
  `#{command}`.split("\n").map!{|i| i.chomp}
end
