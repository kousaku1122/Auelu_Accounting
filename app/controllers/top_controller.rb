class TopController < ApplicationController
    def index
        if params[:num].present?
            @players = Player.where("uni_num = ?", params[:num])
        else 
            @players = Player.all.order(uni_num: "ASC")
        end
        
    end
    
    def edit
        @player = Player.find(:id)
    end
    
end
