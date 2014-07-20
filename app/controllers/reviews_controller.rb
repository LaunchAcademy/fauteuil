class ReviewsController < ApplicationController

  def new
    @chair = Chair.find(params[:chair_id])
    @review = Review.new
  end

  def create
    @chair = Chair.find(params[:chair_id])

    @review = Review.new(review_params)

    @review.user_id = current_user.id
    @review.chair = @chair

    if @review.save

      @review.generate_email
      # Automatically add +1 from review author
      @review.votes.create(value: 1, user_id: current_user.id)

      redirect_to @chair, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @chair = Chair.find(params[:chair_id])
    if @review.present?
      @review.destroy
    end
    redirect_to @chair, notice: "Review was deleted"
  end

  def review_params
    params.require(:review).permit(:body, :rating)
  end

  def upvote
    @review = Review.find(params[:id])
    @review.votes.create(value: 1, user_id: current_user.id)
    redirect_to chair_path(@review.chair_id)
  end

  def downvote
    @review = Review.find(params[:id])
    @review.votes.create(value: -1, user_id: current_user.id)
    redirect_to chair_path(@review.chair_id)
  end
end
