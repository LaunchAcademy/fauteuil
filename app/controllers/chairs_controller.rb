class ChairsController < ApplicationController
  def index
    @chairs = Chair.limit(25)
    if params[:search]
      @chairs = Chair.search(params[:search])
    end
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
      redirect_to @chair, notice: "Chair was successfully created."
    else
      render :new, notice: "Your chair couldnt be saved."
    end
  end

  private

  def chair_params
    params.require(:chair).permit(:name, :description, :manufacturer, :location, :picture, :category_id, :user_id)
  end
end
