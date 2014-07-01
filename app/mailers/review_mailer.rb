class ReviewMailer< ActionMailer::Base
  default from: "info@fauteuil.com"

  def review_email(review)
    @review = review

    mail to: review.chair.user.email,
      subject: 'Someone Just Reviewed Your Chair'
  end
end
