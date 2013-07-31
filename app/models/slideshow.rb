class Slideshow < ActiveRecord::Base
  attr_accessible :description, :featured, :priority, :title, :photo_ids
  validates_presence_of :title, :priority
  validates_uniqueness_of :title
  has_many :photo_slideshows, :dependent => :destroy
  has_many :photos, :through => :photo_slideshows
  accepts_nested_attributes_for :photos
  scope :ordered, order("priority DESC")
end
