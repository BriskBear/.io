#!/usr/bin/env ruby

class Bind
  def initialize(**a)
    @this = **a
    d = []
    @this.each do |t|
      d.push(t)
    end
    Hash[@this.map(&:to_a).flatten]    
  end
end
