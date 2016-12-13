module Playing_Cards
  
  class Card_Deck

    def initialize
      @suits = ['Spades', 'Clubs', 'Diamonds', 'Hearts']
      @deck = []
      setup()
    end

    def setup
      @suits.each do |suit|
        (1..13).each do |number|
  
          case number
            when 1
              number = "Ace"
            when 11
              number = "Jack"
            when 12
              number = "Queen"
            when 13
              number = "King"
          end
    
          @deck.push("#{number} of #{suit}")
          shuffle()
  
        end
      end
    end

    def reset
      puts "*******************"
      puts "NEW DECK"
      puts "*******************"
      initialize()
    end

    def shuffle
      @deck = @deck.shuffle
    end

    def print_cards
      puts "Your deck:\n"
      puts "---------------"
      @deck.each do |card|
        puts card
      end
    end

    def draw_from_top
      draw(-1)
    
      # Remove card from deck
      @deck.pop(1)
    
    end
  
    def draw_from_top_test
      draw(-1)
    
      # Remove card from deck
      @deck.remove_card(1)
    
      # Tests last card is correct
      puts "++++++++++++++++++++++"
      puts "Next card: #{@deck.last}"
      puts "++++++++++++++++++++++"
        
      reset()
    
    end    
  
    def draw(index)
      puts "++++++++++++++++++++++"
      puts "You drew: #{@deck[index]}"
      puts "++++++++++++++++++++++"      
    end
  
    def count_cards
      puts "Remaining cards: #{@deck.length}"
    end  
  
    def pick_a_card(index)
      draw(index)
      remove_card(index)
    end
  
    def remove_card(index)
      @deck.delete_at(index)
    end
  
    def deal_hand(hand_size)
      (1..hand_size).each do |deal_a_card|
        draw(deal_a_card)
        remove_card(deal_a_card)
      end
    end
  
  end
  
end
