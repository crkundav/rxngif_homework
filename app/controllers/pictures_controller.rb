require 'twilio-ruby'
class PicturesController < ApplicationController
  
  def show
  	identifer = params[:id]
  	delete_success = params[:delete_success]
  	@return = Picture.find(identifer)
  end

  def index
  	@return = Picture.all
  end

  def destroy
  	id = params[:id]
  	p = Picture.find(id)
  	p.delete
  	flash[:notice] = 'Delete Success'
  end

  def new


  end

  def edit
   @return = Picture.find(params[:id])
  end

  def update
    id = params[:id]
    name = params[:caption]
    url = params[:source]
    p = Picture.find(id)
    p.caption = name
    p.source = url
    p.save
  end

  def create
    name = params[:caption]
    url = params[:source]
    p = Picture.new
    p.caption = name
    p.source = url
    p.save
    flash[:notice] = 'Row Added succesfully'
     
  end
  
end
