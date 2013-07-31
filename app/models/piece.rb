class Piece < ActiveRecord::Base
  attr_accessible :description, :featured, :priority, :summary, :title, :piece_section_ids, :piece_sections_attributes
  validates_presence_of :title
  validates_uniqueness_of :title
  has_many :piece_sections, :dependent => :destroy
  accepts_nested_attributes_for :piece_sections
  scope :ordered, order("priority DESC")
end
