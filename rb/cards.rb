require "./playing_cards.rb"

cards = Playing_Cards::Card_Deck.new

# cards.print_cards

# cards.count_cards
# cards.draw_from_top

# cards.count_cards
# puts "Pick a card, any card!\n"
# puts "(Enter card position)"
# card_position = $stdin.gets.chomp.to_i

# cards.pick_a_card(card_position)
# cards.count_cards

cards.deal_hand(5)
cards.count_cards

# Tests

# cards_test = Card_Deck.new
# cards_test.draw_from_top_test
# cards_test.count_cards
