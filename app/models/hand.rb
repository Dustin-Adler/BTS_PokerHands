class Hand < ApplicationRecord
    validates :card1, :card2, :card3, :card4, :card5, :rank_id, presence: true
    
    before_validation :ensure_rank

    belongs_to :hand_rank, 
        foreign_key: :rank_id, 
        class_name: :Rank
        
    def ensure_rank
        #get values of all cards as ints and order them least to greatest
        values = []; suits = []
        cards = [self.card1, self.card2, self.card3, self.card4, self.card5]
        cards.each { |card| values.push(evaluate_card(card[0...-1])); suits.push(card[-1]) }
        values.sort!
        
        value_count = Hash.new {|h, k| h[k] = 0} #create hash to count repeating card values
        values.each {|el| value_count[el] += 1}  #count repeated values

        #logic used to determine what rank to give the hand
        flush = suits.all?{ |el| el == suits[0]} 
        straight = values[1..-1].each_with_index.all? { |el, i| el == values[i] + 1}
        straight_flush = flush && straight
        four_of_a_kind = value_count.values.any? {|el| el == 4}
        three_of_a_kind = value_count.values.any? {|el| el == 3}
        pairs = value_count.values.count {|el| el == 2} #count how many pairs
        pair = pairs == 1
        two_pair = pairs == 2
        full_house = three_of_a_kind && pair
        high_card = true

        if straight_flush 
            self.rank_id = Rank.find_by(hand_name: 'Straight Flush').id
        elsif four_of_a_kind
            self.rank_id = Rank.find_by(hand_name: 'Four of a Kind').id
        elsif full_house
            self.rank_id = Rank.find_by(hand_name: 'Full House').id
        elsif flush
            self.rank_id = Rank.find_by(hand_name: 'Flush').id
        elsif straight
            self.rank_id = Rank.find_by(hand_name: 'Straight').id
        elsif three_of_a_kind
            self.rank_id = Rank.find_by(hand_name: 'Three of a Kind').id
        elsif two_pair
            self.rank_id = Rank.find_by(hand_name: 'Two Pair').id
        elsif pair
            self.rank_id = Rank.find_by(hand_name: 'Pair').id
        else
            self.rank_id = Rank.find_by(hand_name: 'High Card').id
        end
    end

    private

    def evaluate_card(card_value)
        case card_value
            when "J"
                11
            when "Q"
                12
            when "K" 
                13
            when "A"
                14
            else 
                card_value.to_i
        end

    end

end
