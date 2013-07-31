class Photo < ActiveRecord::Base
  attr_accessible :date, :description, :photo, :priority, :title, :remote_image_url, :slideshow_ids
  validates_presence_of :title, :date
  has_many :photo_slideshows, :dependent => :destroy
  has_many :slideshows, :through => :photo_slideshows
  mount_uploader :photo, PhotoUploader
  accepts_nested_attributes_for :slideshows
  scope :ordered, order("priority DESC")
end
