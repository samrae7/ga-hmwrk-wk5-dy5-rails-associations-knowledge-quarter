class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.all.order('created_at DESC')
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def new
    @favourite = Favourite.new
  end

  def create
    favourite = @favourite.new(favourite_params)
    if favourite.save
      redirect_to favourite
    else
      render :new
    end
  end

  def edit
    @favourite = Favourite.find(params[:id])
  end

  def update
    favourite = Favourite.find(params[:id])
    if favourite.update(favourite_params)
      redirect_to favourite
    else
      render :edit
    end
  end

  def delete
    favourite = Favourite.find(params[:id])
    favourite.destroy
    redirect_to favourites
  end

  private

  def favourite_params
    params.require(:favourite).permit(:notes)
  end

end
