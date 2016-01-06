class Array
  define_method(:check_for_winner) do
    return "TIE!" if self[ 0 ] == self[ 1 ]

    if self[ 0 ] == "rock" && self[ 1 ] == "scissors" ||
       self[ 0 ] == "paper" && self[ 1 ] == "rock"    ||
       self[ 0 ] == "scissors" && self[ 1 ] == "paper"
      return "Player One wins!"
   elsif self[ 1 ] == "rock" && self[ 0 ] == "scissors" ||
      self[ 1 ] == "paper" && self[ 0 ] == "rock"    ||
      self[ 1 ] == "scissors" && self[ 0 ] == "paper"
      return "Player Two wins!"
    end
  end
end
