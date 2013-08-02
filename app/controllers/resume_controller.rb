class ResumeController < ApplicationController
  def index
  	@title = "Resume"
    @tags = Tag.where(featured: true).order("title ASC")
  	@all_tags = Tag.order("title ASC")
  	@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
  end

  def tag
  	@tags = Tag.where(featured: true).order("title ASC")
  	@all_tags = Tag.order("title ASC")
  	@tags_displayed = Tag.find_all_by_title(params[:title].split('/'))
  	@featured_slideshows = Slideshow.where(featured: true).order("title ASC")

    all_titles_array = []
    @all_tags.each do |tag|
      all_titles_array.push(tag.title)
    end
    @title = all_titles_array.sort.join('/')
  end
end