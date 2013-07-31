class PhotosController < ApplicationController
	def index
		@photos = Photo.order("date DESC")
		@slideshows = Slideshow.order("priority DESC")
		@tags = Tag.where(featured: true).order("title ASC")
  		@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
	end

	def slideshow
		@slideshow = Slideshow.find_by_title(params[:title])
		@photos = @slideshow.photos
		@tags = Tag.where(featured: true).order("title ASC")
  		@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
	end	
end
