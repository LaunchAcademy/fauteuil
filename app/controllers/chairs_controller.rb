class ChairsController < ApplicationController
  def index
    @chairs = Chair.limit(25)
  end

  def show
    @chair = Chair.includes(:category).find(params[:id])
    @review = Review.new
    @reviews = @chair.reviews.by_rank
  end

  def new
    @chair = Chair.new
  end

  def create
    @chair = Chair.new(chair_params)

    if @chair.save
      flash[:notice] = "Success!"
      redirect_to '/chairs'
    else
      flash.now[:notice] = "Your restaurant couldn't be saved."
      render :new
    end
  end

  private

  def chair_params
    params.require(:chair).permit(:name, :description, :manufacturer, :location, :picture, :category_id, :user_id)
  end
end
