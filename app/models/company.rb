class Company < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  belongs_to :country
  mount_uploader :logo, ImageUploader
end
