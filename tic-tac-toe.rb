# frozen_string_literal: true


#$table = [[1,1,0],[1,2,1],[1,2,1]]


class TicTacToe
  def initialize
    $table = [[0,0,0],[0,0,0],[0,0,0]]
    putTable
  end

  def putTable
    $table.each do |x|
      x.each do |y|
        if y == 1
          print " O "
        elsif y == 2
          print " X "
        else
          print " _ "
        end
      end
      puts " "
    end
  end

  def move(player)
    puts "#{player} coordinates:"
    coordinates = gets.chomp
    coordinates = coordinates.split("").map { |s| s.to_i }

    setmove(coordinates, player)
  end

  def setmove(coordinates, player)
    coorx = coordinates[0]
    coory = coordinates[1]

    if coorx<3 && coorx>=0 && coory<3 && coory>=0
      if $table[coorx][coory] != 0
        puts "Error: coordinates are occupied"
        move(player)  ###### arguments
      else
        $table[coorx][coory] = player
        if player == 1
          player = 2
        else
          player = 1
        end
        win
        putTable
      end
    elsif
    puts "Error: coordinates are not between 1-3"
      ################# Call the move again #############
    end
    move(player) ###### arguments
  end

  def playgame
    move(1)
  end

  def win
    arr = [0,1,2]

    arr.each do |x|
      if $table[x][0] == $table[x][1] && $table[x][1] == $table[x][2] && $table[x][0] != 0
        print $table[x][0]
        print "Win"
        puts " "
      end
    end

    arr.each do |x|
      if $table[0][x] == $table[1][x] && $table[1][x] == $table[2][x] && $table[x][0] != 0
        print $table[0][x]
        print "Win"
        puts " "
      end
    end

    if $table[0][0] == $table[1][1] && $table[1][1] == $table[2][2] && $table[1][1] != 0
        print $table[0][0]
        print "Win"
        puts " "
    end

    if $table[0][2] == $table[1][1] && $table[1][1] == $table[2][0] && $table[1][1] != 0
        print $table[0][0]
        print "Win"
        puts " "
    end


  end

end

a = TicTacToe.new


a.playgame