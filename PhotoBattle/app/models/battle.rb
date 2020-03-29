class Battle < ApplicationRecord
    mount_uploaders :picture, PictureUploader
    has_many :battle_attachments
    accepts_nested_attributes_for :battle_attachments
end
