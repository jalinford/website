class MediaController < ApplicationController
  def index
  	@title = "Media"
    @tags = Tag.where(featured: true).order("title ASC")
    @featured_slideshows = Slideshow.where(featured: true).order("title ASC")
    @media = Media.order("priority DESC")
    @featured_media = Media.where(featured: true).order("priority DESC")
    @all_media_tags = MediaTag.order("title ASC")
    @authored_media_tags = MediaTag.where(author: true).order("title ASC")

    @tag = nil
  end

  def tag
  	@tag = MediaTag.find_by_title(params[:title])
		@title = @tag.title
		#@media = @tag.media.order("priority DESC")
		#@featured_media = @tag.media.where(featured: true).order("priority DESC")


		@tags = Tag.where(featured: true).order("title ASC")
  	@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
    @all_media_tags = MediaTag.order("title ASC")
    @authored_media_tags = MediaTag.where(author: true).order("title ASC")
  end
end
