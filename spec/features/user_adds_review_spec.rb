require 'rails_helper'

feature 'user adds review', %q(

Acceptance Criteria:

* Check if user has already added a review!
* On the show page of a chair I have access to a form where
  I can submit my review
* Everytime a review is added to a chair, the creator of that page is
  notified by email
* I should be able to rank the chair between 1 to 5.
  That integer will be converted to a star value
* When my review is succesfully added I am redirected to the
  show page of the chair I just reviewed
) do

  scenario 'Add valid review to chair and notify creator' do
    #clear out mail deliveries
    ActionMailer::Base.deliveries = []

    prev_count = Review.count

    chair = FactoryGirl.create(:chair)
    user = FactoryGirl.create(:user)

    login_as(user)
    visit new_chair_review_path(chair.id)


    fill_in 'Body', with: 'Great chair'
    select '5', from: 'Rating'
    click_button 'Create Review'

    expect(page).to have_content 'Review was successfully created.'
    expect(page).to have_content 'Great chair'
    expect(page).to have_content '5'

    expect(Review.count).to eq(prev_count + 1)

    # upon registering, a confirmation email should be delivered,
    # so ActionMailer::Base.deliveries should include the email:
    expect(ActionMailer::Base.deliveries.size).to eql(1)

    # the email we just sent should have the proper subject and recipient:
    last_email = ActionMailer::Base.deliveries.last
    expect(last_email).to have_subject('Someone Just Reviewed Your Chair')
    expect(last_email).to have_contennt('Great Chair')
    expect(last_email).to deliver_to('user@example.com')

  end

end
