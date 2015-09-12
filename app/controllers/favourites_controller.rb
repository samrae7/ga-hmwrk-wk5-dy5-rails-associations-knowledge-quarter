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
    if favourtie.save
      redirect_to favourites
  end

  def edit
  end

  def update
  end

  def delete
  end




end
