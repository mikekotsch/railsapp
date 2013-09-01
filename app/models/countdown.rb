class Countdown < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
