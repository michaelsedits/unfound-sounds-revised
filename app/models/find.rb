class Find < ActiveRecord::Base
  belongs_to :user
  belongs_to :album
  
  mount_uploader :photo, FinderUploader
end
