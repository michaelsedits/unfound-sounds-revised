class Round < ActiveRecord::Base
  has_many :albums, :dependent => :destroy
  has_many :users
  
  accepts_nested_attributes_for :albums, allow_destroy: true
  accepts_nested_attributes_for :users
end
