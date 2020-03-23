class BattlesController < ApplicationController
    def new
        @battle = Battle.new
    end
    
    def show
       @battle = Battle.find(params[:id])
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
        #render plain: params[:article].inspect
    end
end
private
    def battle_params
        params.require(:battle).permit(:picture)
    end