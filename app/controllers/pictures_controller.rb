class PicturesController < ApplicationController
  before_action :authorize  
  def index
  end

  def new
    @picture = Picture.new 
    @gallery_id = params[:gallery_id].to_i 
    puts @gallery_id
  end

  def create
    @picture = Picture.create(picture_params)

    if @picture.save
      puts @picture.gallery_id
      puts '****____*****'
      puts params[:picture][:gallery_id]
      puts '****____*****'
      redirect_to gallery_path(@picture.gallery_id)
    else 
      render 'new' 
    end 
  end

  def update
  end

  def delete
    @picture = Picture.find(params[:picture][:id].to_i)
    @gallery = @picture.gallery_id
    @picture.destroy 
    redirect_to gallery_path(@gallery )
  end

  def confirmation
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :description, :image, :user_id, :gallery_id)
    end 
end
