class News < ActiveRecord::Base
  attr_accessible :priority, :summary, :title
  validates_presence_of :title
end
