class Play
  def initialize
    @winning_combination = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  end

  def comparison_one(arr)
    (0..7).each do |i|
      next unless (@winning_combination[i] - arr).empty?

      puts '------------------------------'
      puts '--> You won the game!! <--'
      puts '------------------------------'
      return true
    end
    false
  end

  def comparison_two(arr)
    (0..7).each do |i|
      next unless (@winning_combination[i] - arr).empty?

      puts '------------------------------'
      puts '--> You won the game!! <--'
      puts '------------------------------'
      return true
    end
    false
  end
end
