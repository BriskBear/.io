module CountOff
  def count_off
    self.each_with_index do |this, idx|
      puts "[#{idx}] - #{this}"
    end
  end
end

Array.class_eval { include CountOff }
