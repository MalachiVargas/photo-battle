class BattlesController < ApplicationController
    def new
        @battle = Battle.new
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
        #@battle.user = current_user
        if @battle.save
            redirect_to @battle
        else
            render 'new'
        end
        #render plain: params[:article].inspect
    end 
    def update
        @battle = Battle.find(params[:id])
        if @battle.update_attributes(battle_params)
            redirect_to @battle
        end
    end
private
    def battle_params
        params.require(:battle).permit( :picture, {pictures: []})
    end

end
