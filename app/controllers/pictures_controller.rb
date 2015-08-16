class PicturesController < ApplicationController
  before_filter :authorize 
  def index
  end

  def new
    @picture = Picture.new 
    @gallery_id = params[:gallery_id]
    puts @gallery_id
  end

  def create
    @picture = Picture.create(picture_params)

    if @picture.save
      puts @picture
      redirect_to gallery_path(params[:gallery_id])
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
    def picture_params
      params.require(:picture).permit(:title, :description, :image, :user_id, :gallery_id)
    end 
end
