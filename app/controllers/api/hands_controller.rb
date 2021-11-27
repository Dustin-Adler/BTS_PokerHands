class Api::HandsController < ApplicationController

    def index
        
    end

    def create
        @hand = Hand.new(hand_params)

        if @hand.save
            
        else
            render json: @hand.errors.full_messages, status: 422
        end
    end

    def show
        
    end

    def update
        
    end

    def destroy
        
    end

    private

    def hand_params
        params.require(:hand).permit(:card1, :card2, :card3, :card4, :card5)
    end
end
