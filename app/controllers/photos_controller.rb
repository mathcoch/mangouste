class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(name: params[:photo][:name], file: params[:file])
    # redirect_to new_photo_path
  end

  private

  def photo_params
    params.require(:photo).permit(:file, :name)
  end
end
