require 'rss'
require 'open-uri'
class MainController < ApplicationController
  def index
    @tags = Tag.where(featured: true).order("title ASC")
    @featured_slideshows = Slideshow.where(featured: true).order("title ASC")
    @title = "Home"
    @piece = Piece.where(featured: true).order("priority DESC").first
    @project = Project.where(featured: true).order("priority DESC").first
    begin
      @latest_blog_posts = RSS::Parser.parse(open('http://andrewlinford.wordpress.com/feed/').read, false).items[0...5]
    rescue 
      @latest_blog_posts = nil
    end
  end
end