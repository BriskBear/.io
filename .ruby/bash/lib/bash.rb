#!/usr/bin/env ruby

class Bash
  def self.ls(path = ".")
    ls = `ls -F #{path}`.split("\n")
    puts path
    ls
  end
  def self.la(path = ".")
    la = `ls -aF #{path}`.split("\n")
    puts path
    la
  end
end
