def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1

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
# puts "Dealing..."
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
new_card_total = card_total
  prompt_user
  user_desire = get_user_input
  if user_desire == "h"
    new_card = deal_card
    new_card_total += new_card
  end
  new_card_total


end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round

  until card_total > 21
    new_card_total = hit?(card_total)
    card_total = new_card_total
    display_card_total(card_total)
  end
  end_game(card_total)
end
