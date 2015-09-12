class ActivitiesController < ApplicationController
  
  def index
    @activities = Activity.all.order(:name)
  end

  def new
    @activity = Activity.new
    # does this need to be an instance variable?
  end

  def create
    activity = Activity.new(activity_params)

    if activity.save
      flash[:notice] = 'New activity added'
      redirect_to activities

    else
     flash.now[:error] = "Error: #{activity.errors.full_messages}"
     render :new
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update 
     activity = Activity.find(params[:id])
     if activity.update(activity_params)
      redirect_to activity
    else
      flash.now[:error] = "Error: #{activity.errors.full_messages}"
      render :edit
    end
  end

  def delete
    activity = Activity.find(params[:id])
    activity.destroy
    redirect_to activities
  end

  private

    def activity_params
      params.require(:activity).permit(:name, :venue, :description, :image_url, :site_url)
    end

end