player_1_lives = 3
player_1_points = 0
# player_2_lives = 3
# player_2_points = 0
begin 
  number1 = rand(1...20)
  number2 = rand(1...20)
  puts "what #{number1} + #{number2} equals to?"  
  if gets.chomp.to_i == number1 + number2
    # TODO: add points
  else
    player_1_lives -= 1
    puts "lose life (life=#{player_1_lives})"
  end
end while player_1_lives > 0