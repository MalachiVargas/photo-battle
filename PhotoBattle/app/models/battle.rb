class Battle < ApplicationRecord
    mount_uploaders :pictures, PictureUploader
    serialize :pictures, JSON
    has_many :battle_attachments
    accepts_nested_attributes_for :battle_attachments
end
