class Writer < ActiveRecord::Base
  has_and_belongs_to_many :films
  extend FriendlyId
  friendly_id :name, use: :finders
end
