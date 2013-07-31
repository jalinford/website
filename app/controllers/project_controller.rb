class ProjectController < ApplicationController
  def index
  	@title = "Projects"
  	@tags = Tag.where(featured: true).order("title ASC")
  	@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
  	@projects = Project.order("priority DESC")
	@featured_projects = Project.where(featured: true).order("priority DESC")
  end

  def project
  	@project = Project.find_by_title(params[:title])
	@title = @project.title
  	@tags = Tag.where(featured: true).order("title ASC")
  	@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
  end
end
