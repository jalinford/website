class Media < ActiveRecord::Base
  attr_accessible :featured, :priority, :summary, :title, :website
  validates_presence_of :title
  validates_uniqueness_of :title
end
