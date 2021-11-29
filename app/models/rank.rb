class Rank < ApplicationRecord

    has_many :hands, 
        foreign_key: :rank_id, 
        class_name: :Hand
        
end