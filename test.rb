def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  until(input == "s" or input == "h")
    invalid_command
    prompt_user
    input = gets.chomp
  end
  
  if input == "s"
    return card_total
  end
  
  if input == "h"
    return deal_card + card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  card_count = initial_round

  until card_count >= 21 do
    new = hit?(card_count)
    card_count = new
    display_card_total(card_count)
  end
  end_game(card_count)
end

puts runner
