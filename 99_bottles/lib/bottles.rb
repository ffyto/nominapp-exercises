class Bottles
  def verse(num)
    if num > 2
      return <<-VERSE
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num - 1} bottles of beer on the wall.
VERSE
    end
    if num == 2
      return <<-VERSE
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num - 1} bottle of beer on the wall.
VERSE
    end
    if num == 1
      return <<-VERSE
#{num} bottle of beer on the wall, #{num} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
    end
    if num == 0
      return <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
    end
  end


  # def verses(num1, num2)
  #   num1.downto(num2).map {|num| verse(num)}.join("\n")
  # end

  def verses(num1, num2)
    result = ""
    num1.downto(num2) do |num|
      result += verse(num) + "\n"
    end
    result.chomp
  end

  def song
    verses(99,0)
  end
end



