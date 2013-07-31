class MediaTag < ActiveRecord::Base
  attr_accessible :author, :featured, :title, :media_ids
  validates_presence_of :title
  validates_uniqueness_of :title
  has_many :media_tag_joins, :dependent => :destroy
  has_many :media, :through => :media_tag_joins
  accepts_nested_attributes_for :media
  scope :ordered, order("title ASC")
end
