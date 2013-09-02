class Countdown < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  
  validates :title, presence: true, length: { minimum:4 }
  validates_datetime :time, :after => :now
end
