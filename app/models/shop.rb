class Shop < ActiveRecord::Base
  
  belongs_to :user
  has_many :updates
  has_many :owners
  has_many :favorites
end
