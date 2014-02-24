class Profile < ActiveRecord::Base
   belongs_to :user 
   has_and_belongs_to_many
   mount_uploader :image, ImageUploader
end
