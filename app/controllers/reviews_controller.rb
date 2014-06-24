class ReviewsController < ApplicationController

  def new
    @chair = Chair.find(params[:chair_id])

    @review = Review.new
  end

  def create
    @chair = Chair.find(params[:chair_id])

    @review = Review.new(review_params)

    @review.user_id = 0 # replace with session[:user_id]
    @review.chair = @chair

    if @review.save
      redirect_to "/chairs/#{@chair.id}"
    else
      render action: 'new'
    end
  end

  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
