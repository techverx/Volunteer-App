class Job < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :profile
end
