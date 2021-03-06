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
    p = Picture.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save

    redirect_to("http://localhost:3000/all_pictures")
  end

  def destroy
    p = Picture.find_by({ :id => params[:id]})
    p.destroy

    redirect_to("http://localhost:3000/all_pictures")
  end

  def edit
    @picture = Picture.find(params[:id])
    end

  def update
    g = Picture.find_by({ :id => params[:id]})
    g.caption = params[:caption]
    g.source = params[:source]
    g.save

    redirect_to("http://localhost:3000/picture_details/#{g.id}")
  end
end
