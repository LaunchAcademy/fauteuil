class ChairsController < ApplicationController
  def index
    @chairs = Chair.limit(25)
  end

  def show
    @chair = Chair.includes(:category).find(params[:id])
    @review = Review.new
  end

  def new
    @chair = Chair.new
  end

  def create
    @chair = Chair.new(chair_params)
    if @chair.save
      redirect_to @chair, notice: 'Chair was successfully created.'
    else
      render action: 'new'
    end
  end

  private

  def chair_params
    params.require(:chair).permit(:name, :description, :manufacturer, :location, :picture, :category_id, :user_id)
  end

end
