class TopController < ApplicationController
    def index
        if params[:uni_num].present?
            @players = Player.where('uni_num LIKE ?', params[:uni_num].to_i)
        else
            @players = Player.all.order(uni_num: "ASC")
        end
    end
    
    def edit
        @player = Player.find(:id)
    end
    
end
