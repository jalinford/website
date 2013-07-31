require 'rss'
require 'open-uri'
class MainController < ApplicationController
  def index
    @tags = Tag.where(featured: true).order("title ASC")
    @featured_slideshows = Slideshow.where(featured: true).order("title ASC")
    @title = "Home"
    @piece = Piece.where(featured: true).order("priority DESC").first
    @project = Project.where(featured: true).order("priority DESC").first
    @news = News.order("priority DESC").first(2)
    begin
      @latest_blog_posts = RSS::Parser.parse(open('http://andrewlinford.wordpress.com/feed/').read, false).items[0...5]
    rescue 
      @latest_blog_posts = nil
    end
  end
  
  def media
    @title = "Media"
    @tags = Tag.where(featured: true).order("title ASC")
    @featured_slideshows = Slideshow.where(featured: true).order("title ASC")
    @media = Media.order("priority DESC")
    @featured_media = Media.where(featured: true).order("priority DESC")
  end
end