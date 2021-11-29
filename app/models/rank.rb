class Rank < ApplicationRecord

    has_many :hands, 
        foreign_key: :rank, 
        class_name: :Hand
        
end