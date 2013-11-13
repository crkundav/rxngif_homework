class PostsController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end

 def index
  	@list_of_pictures = Picture.all
  end
 

 def create
 	p = Picture.new
 	p.source = params[:source]
 	p.caption = params[:caption]
 	p.save
 	redirect_to posts_url, :notice => "Picture created"
 end

def destroy
	p = Picture.find(params[:id]) 
	p.destroy 
	redirect_to posts_url, :notice => "Picture deleted"
end

def edit
	@picture = Picture.find(params[:id]) 
end

def update
	p = Picture.find(params[:id]) 
	p.source = params[:source]	
	p.caption = params[:caption]
	p.save
	redirect_to post_url(p.id), :notice => "Picture updated"
end


end
