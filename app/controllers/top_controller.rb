class TopController < ApplicationController
    def index
        @players = Player.all.order(uni_num: "ASC")
    end
    
    def edit
        @player = Player.find(:id)
    end
end
