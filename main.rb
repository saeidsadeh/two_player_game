
# each class should go to a different file
# game.rb
class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    # initialize the instance variables
    @player_1 = player_1
    @player_2 = player_2
    @player_now = @player_1
  end

  def generate_question
    @number1 = rand(1...20)
    @number2 = rand(1...20)

    puts "#{@player_now.name}, what #{@number1} + #{@number2} equals to?"
  end

  def verify_answer
    if gets.chomp.to_i == @number1 + @number2
     @player_now.gain_points
    else
     @player_now.lose_lives
    end

    if @player_now == @player_1
       @player_now = @player_2
    else
      @player_now = @player_1
    end


  end
end


class Player
  attr_reader :name, :lives, :points

  def initialize(name)
    # initialize the instance variables
    @name = name
    @lives = 3
    @points = 0
  end

  def gain_points
     @points += 1
     puts "#{@name} get points (points=#{@points})!!"
  end

  def lose_lives
    @lives -= 1
    puts "#{@name} lose life (lives=#{@lives})!!"

  end

end


# # 1. ask player one for name

player_1 = Player.new('ann')
# # # 2. ask player 2 for name
player_2 = Player.new('bob')

game = Game.new(player_1, player_2)

begin 
  game.generate_question

  # get the answer from the player
  # the verify answer should tell you whether game finished or not
  game.verify_answer
end while player_1.lives > 0 && player_2.lives > 0

