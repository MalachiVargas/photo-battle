class BattlesController < ApplicationController
    def new
        @battle = Battle.new
        @battle.update_attributes(votes0: 0)
        @battle.update_attributes(votes1: 0)
        @battle.update_attributes(votes2: 0)
        @battle.update_attributes(votes3: 0)
    end
    def edit
        @battle = Battle.find(params[:id])
    end
    def show
        #if doesnt work uncomment out
        @battle = Battle.find(params[:id])
    end
    def index
       @battles = Battle.all
    end
    def item_params
        params.require(:item).permit(:picture) # Add :picture as a permitted paramter
    end
    def create
        @battle = Battle.new(battle_params)
        if @battle.save
            redirect_to @battle
        else
            render 'new'
        end
    end 
    def update
        @battle = Battle.find(params[:id])
        
        
        if battle_params[:votes0] || battle_params[:votes1] || battle_params[:votes2] || battle_params[:votes3]
        
        
            if battle_params[:votes0]  
                @battle.update_attributes(votes0: (@battle.votes0 + 1))
            end
            if battle_params[:votes1]
                @battle.update_attributes(votes1: (@battle.votes1 + 1))
            end
            if battle_params[:votes2]
                @battle.update_attributes(votes2: (@battle.votes2 + 1))
            end
            if battle_params[:votes3]
                @battle.update_attributes(votes3: (@battle.votes3 + 1))
            end
            redirect_to @battle
        else 
            @battle.update_attributes(battle_params)
            redirect_to @battle
        end
   
    end
    def result
        @battle = Battle.find(params[:id])
        @battles = Battle.all
    end
private
    def battle_params
        params.require(:battle).permit( :picture, {pictures: []}, :votes0, :votes1, :votes2, :votes3)
    end

end
