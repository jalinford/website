class Project < ActiveRecord::Base
  attr_accessible :description, :featured, :priority, :summary, :title
  validates_presence_of :title
  validates_uniqueness_of :title
end
