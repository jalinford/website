class PhotosController < ApplicationController
	def index
		@title = "Photos"
		@photos = Photo.order("priority DESC")
		@slideshows = Slideshow.order("priority DESC")
		@tags = Tag.where(featured: true).order("title ASC")
  		@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
	end

	def slideshow
		@slideshow = Slideshow.find_by_title(params[:title])
		@title = @slideshow.title
		@photos = @slideshow.photos.order("priority DESC")
		@tags = Tag.where(featured: true).order("title ASC")
  		@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
	end	
end
