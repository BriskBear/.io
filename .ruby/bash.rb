module BashBoss
  def bash
    self.split("\n").map!{|i| i.chomp}
  end
end

String.class_eval {include BashBoss}

def Bash(command)
  `#{command}`.split("\n").map!{|i| i.chomp}
end
