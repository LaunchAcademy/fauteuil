class ChairsController < ApplicationController
  before_action :authorize_user, only: [:edit]
  def index
    @chairs = Chair.page(params[:page]).per(3)

    if params[:search]
      @chairs = Chair.search(params[:search])
      if @chairs.empty?
        flash.now[:notice] = "No results found for *#{params[:search]}*"
      end
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

  def destroy
    @chair = Chair.find(params[:id])
    if @chair.present?
      @chair.destroy
    end
    redirect_to chairs_path, notice: "Chair was deleted"
  end

  private

  def chair_params
    params.require(:chair).permit(:name, :description, :manufacturer, :location, :picture, :category_id, :user_id)
  end

  def authorize_user
    unless user_signed_in? and current_user.admin?
      raise ActionController::RoutingError.new('Not Found')
    end
  end

end
