class MusicController < ApplicationController
	def index
		@pieces = Piece.order("priority DESC")
		@featured_pieces = Piece.where(featured: true).order("priority DESC")
		@tags = Tag.where(featured: true).order("title ASC")
  		@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
	end

	def music
		@piece = Piece.find_by_title(params[:title])
		@piece_sections = @piece.piece_sections
		@tags = Tag.where(featured: true).order("title ASC")
  		@featured_slideshows = Slideshow.where(featured: true).order("title ASC")
	end	
end