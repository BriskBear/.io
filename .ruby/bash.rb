module BashBoss
  def bash
    self.split("\n").map!{|i| i.chomp}
  end
end

String.class_eval {include BashBoss}

module Bash
  def ls (*args)
    `ls #{args}`.split(/\n/).map{|i| i.chomp}
  end
end
