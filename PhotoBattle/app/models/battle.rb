class Battle < ApplicationRecord
    mount_uploaders :pictures, PictureUploader
    serialize :pictures, JSON
    serialize :picture, JSON
    has_many :battle_attachments
    #belongs_to :user
    accepts_nested_attributes_for :battle_attachments
end
