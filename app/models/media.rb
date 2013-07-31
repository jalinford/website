class Media < ActiveRecord::Base
  attr_accessible :featured, :priority, :summary, :title, :website, :media_tag_ids
  validates_presence_of :title
  validates_uniqueness_of :title
  has_many :media_tag_joins, :dependent => :destroy
  has_many :media_tags, :through => :media_tag_joins
  accepts_nested_attributes_for :media_tags
  scope :ordered, order("priority DESC")
end
