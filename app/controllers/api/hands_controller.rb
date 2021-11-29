class Api::HandsController < ApplicationController

    def index
        @hands = Hand.all.includes(:rank)
        render 'api/hands/index'
    end

    def create
        all_cards = Card.all.pluck(:name)   #get the names of all cards
        unverified_hand = hand_params[:hand].split(" ")    #turn param_hand into array
        correct_number_of_cards = unverified_hand.length == 5
        valid_cards = unverified_hand.all? { |el| all_cards.include?(el)}    #verify that all of the cards from params are valid
        
        if valid_cards && correct_number_of_cards
            verified_hand = {}
            unverified_hand.each_with_index {|card, i| verified_hand["card" + (i+1).to_s] = card }  #reformat the now verified cards for creation of hand obj
            @hand = Hand.new(verified_hand)
            if @hand.save
                render 'api/hands/show'
            else
                render json: @hand.errors.full_messages, status: 422    #render validation errors if doesn't pass checks
            end
        else
            render json: 'invalid hand, please double check the names and quantity of cards'
        end

    end

    # def show
        
    # end

    # def update
        
    # end

    # def destroy
        
    # end

    private

    def hand_params
        params.require(:hand).permit(:hand)
    end
end
