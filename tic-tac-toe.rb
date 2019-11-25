# frozen_string_literal: true

$table = [[1,1,1],[1,2,1],[1,2,1]]

class PutsTable 

  $table.each do |x|
    x.each do |y|
      if y == 1
        print " O "
      elsif y == 2
        print " X "
      else
        print " "
      end
    end
    puts " "
  end

end


a = PutsTable.new

a