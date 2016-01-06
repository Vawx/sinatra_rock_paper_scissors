class Fixnum
  define_method(:rock_paper_scissors) do
    case self
      when 0
        return "rock"
      when 1
        return "paper"
      when 2
        return "scissors"
    end
  end
end
