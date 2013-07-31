class ResumeController < ApplicationController
  def index
  	@tags = Tag.where(featured: true).order("title ASC")
  	@all_tags = Tag.order("title ASC")
  	#@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
  end

  def tag
  	@tags = Tag.where(featured: true).order("title ASC")
  	@all_tags = Tag.order("title ASC")
  	@tags_displayed = Tag.find_all_by_title(params[:title].split('/'))
  	#@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
  end
end