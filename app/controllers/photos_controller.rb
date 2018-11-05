class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @photo = Photo.find(params[:place_id])
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:photos).permit(:caption, :photos)
  end
end