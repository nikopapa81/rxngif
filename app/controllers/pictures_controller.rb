class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

  def index
    @list_of_all_pictures = Picture.all
  end

  def new
  end

  def create
  end
end
