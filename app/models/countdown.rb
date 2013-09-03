class Countdown < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  include InferredSlug::Slug
  
  validates :title, presence: true, length: { minimum:4 }
  validates_datetime :time, :after => :now
  
  def slug
    "#{id}-#{title}"
  end
  
  def to_param
    normalized_title = title.gsub(' ', '-').gsub(/[^a-zA-Z0-9\_\-\.]/, '')
    "#{self.id}-#{normalized_title}"
  end
end
