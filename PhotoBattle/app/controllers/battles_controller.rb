class BattlesController < ApplicationController
    def new
        @battle = Battle.new
        @battle_attachment = @battle.battle_attachments.build
    end
    def edit
        @battle = Battle.find(params[:id])
        @battle_attachments = @battle.battle_attachments.all
    end
    def show
        #if doesnt work uncomment out
        @battle = Battle.find(params[:id])
        @battle_attachments = @battle.battle_attachments.all
    end
    
    def item_params
        params.require(:item).permit(:picture) # Add :picture as a permitted paramter
    end
    def create
        @battle = Battle.new(battle_params)
        if @battle.save
            params[:battle_attachments]['avatar'].each do |a|
                @battle_attachment = @battle.battle_attachments.create!(:avatar => a)
            end
            redirect_to @battle
        else
            render 'new'
        end
        #render plain: params[:article].inspect
    end 
    def update
        @battle = Battle.new(battle_params)
        if @battle.save
            params[:battle_attachments]['avatar'].each do |a|
                @battle_attachment = @battle.battle_attachments.create!(:avatar => a)
            end
            redirect_to @battle
        else
            render 'new'
        end
    end
private
    def battle_params
        params.permit({battle_attachments_attributes: [:id, :battle_id, :avatar]})
    end

end
