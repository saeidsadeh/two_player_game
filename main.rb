
# each class should go to a different file
# game.rb
class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    # initialize the instance variables
  end

  def generate_question
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    puts "what #{@number1} + #{@number2} equals to?"
    # case number
    #   whe
    # end
  end

  def verify_answer
    if gets.chomp.to_i == @number1 + @number2
     puts "get points!!"
    else
     puts "lose life"
    end
  end
end


class Player
  # attr_reader :name, :lives, :points
  
  def initialize(name)
    # initialize the instance variables
  end

  def gain_points
  end

  def lose_lives
  end

end


# # 1. ask player one for name

player_1 = Player.new('ann')
# # 2. ask player 2 for name
player_2 = Player.new('bob')

game = Game.new(player_1, player_2)

game.generate_question

# get the answer from the player

game.verify_answer

# the verify answer should tell you whether game finished or not