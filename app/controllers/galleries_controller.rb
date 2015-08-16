class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all 
  end

  def show 
    @gallery = Gallery.find(params[:id])
  end 

  def new
    @new_gallery = Gallery.new
  end

  def create
    @new_gallery.new(gallery_params)

    if @gallery.save
      redirect_to @new_gallery
    else 
      render 'new'
    end 
  end

  def update
  end

  def delete
  end

  def confirmation
  end

  private 
    def gallery_params 
      params.require(:gallery).permit(:title, :user_id)
    end 
    
end