class TopController < ApplicationController
    def index
        @players = Player.all
    end
    
    def edit
        @player = Player.find(:id)
    end
end
