class BattleAttachment < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :battle
    
    def update(battle_attachment_params)
        if @battle_attachment.update(battle_attachment_params)
            redirect_to @battle_attachment.battle
        end 
    end

end
