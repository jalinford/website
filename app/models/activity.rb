class Activity < ActiveRecord::Base
	attr_accessible :end_date, :location, :organization, :position, :priority, :start_date, :activity_highlight_ids, :activity_highlights_attributes, :category_id
  validates_presence_of :organization
  has_many :activity_highlights, :dependent => :destroy
  belongs_to :category
  accepts_nested_attributes_for :activity_highlights, :allow_destroy => true
  accepts_nested_attributes_for :category
  scope :ordered, order("priority DESC")
end