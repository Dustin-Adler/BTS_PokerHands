@hands.each do |hand|
    json.set! hand.id do 
        json.partial! 'api/hands/hand', hand: hand 
    end
end