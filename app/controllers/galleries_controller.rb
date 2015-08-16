class GalleriesController < ApplicationController
  
  before_filter :authorize 
  def index
    @galleries = Gallery.all 
  end

  def show 
    @gallery = Gallery.find(params[:id])
  end 

  def new
    @new_gallery = Gallery.new
    @user = session[:user_id] 
  end

  def create
    @new_gallery = Gallery.new(gallery_params)

    if @new_gallery.save
      puts @new_gallery 
      puts 'gallery created'
      redirect_to '/'
    else 
      render 'new'
    end 
  end

  def update
  end

  def delete
    @gallery = Gallery.find(params[:gallery][:id].to_i)
    @gallery.destroy 
    redirect_to '/'
  end

  def confirmation

  end

  private 
    def gallery_params 
      params.require(:gallery).permit(:title, :user_id)
    end 
    
end