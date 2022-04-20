class Bottles
  def verse(bottle_num)
    "#{quantity(bottle_num).capitalize} #{container(bottle_num)} of beer on the wall, " +
    "#{quantity(bottle_num)} #{container(bottle_num)} of beer.\n" +
    "#{action(bottle_num)}, " +
    "#{quantity(successor(bottle_num))} #{container(successor(bottle_num))} of beer on the wall.\n"
  end

  def verses(high, low)
    high.downto(low).map {|i| verse(i)}.join("\n")
  end

  def song
    verses(99,0)
  end

  def quantity(bottle_num)
    if bottle_num == 0
      "no more"
    else
      bottle_num.to_s
    end
  end

  def container(bottle_num)
    if bottle_num == 1
      "bottle"
    else
      "bottles"
    end 
  end

  def action(bottle_num)
    if bottle_num == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(bottle_num)} down and pass it around"
    end
  end
  
  def pronoun(bottle_num)
    if bottle_num == 1
      "it"
    else
      "one"
    end
  end

  def successor(bottle_num)
    if bottle_num == 0
      99
    else
      bottle_num - 1
    end
  end
end