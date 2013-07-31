class PhotoSlideshow < ActiveRecord::Base
  attr_accessible :photo_id, :slideshow_id
  belongs_to :photo
  belongs_to :slideshow
end