class TicTacToe

  def table(positions)
    x = 0
    for i in 1..3 do
      for j in 1..3 do
        print "#{positions[x]} "
        x += 1
      end
      puts ""
    end
  end

  def game

    positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    puts "Let's start the game!"
    puts ""
    table(positions)
    puts ""

    i=0
    while i < 9 do
      if i % 2 == 0
        print "Player X select a position: "
        player = "X"
      else
        print "Player O select a position: "
        player = "O"
      end
      position = gets.chomp.to_i
      change = positions.find_index(position)
      while !change do
        print "Incorrect position or position already selected. Select a position: "
        position = gets.chomp.to_i
        change = positions.find_index(position)
      end
      positions[change] = player
      i += 1
      puts ""
      table(positions)
      puts ""
      if positions[0] == positions[1] && positions[1] == positions[2]
        return puts "Player #{positions[0]} has won!"
      end
      if positions[3] == positions[4] && positions[4] == positions[5]
        return puts "Player #{positions[3]} has won!"
      end
      if positions[6] == positions[7] && positions[7] == positions[8]
        return puts "Player #{positions[3]} has won!"
      end
      if positions[0] == positions[3] && positions[3] == positions[6]
        return puts "Player #{positions[0]} has won!"
      end
      if positions[1] == positions[4] && positions[4] == positions[7]
        return puts "Player #{positions[1]} has won!"
      end
      if positions[2] == positions[5] && positions[5] == positions[8]
        return puts "Player #{positions[0]} has won!"
      end
      if positions[0] == positions[4] && positions[4] == positions[8]
        return puts "Player #{positions[0]} has won!"
      end
      if positions[2] == positions[4] && positions[4] == positions[6]
        return puts "Player #{positions[2]} has won!"
      end
      if !positions.any? (Integer)
        return puts "This match ends with a tie"
      end
    end

  end

end

new_game = TicTacToe.new
new_game.game
