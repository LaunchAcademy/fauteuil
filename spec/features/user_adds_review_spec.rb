require 'rails_helper'

feature 'user adds review' do

# Acceptance Criteria:
# * Check if user has already added a review!
# * On the show page of a chair I have access to a form where I can submit my review
# * Everytime a review is added to a chair, the creator of that page is notified by email
# * I should be able to rank the chair between 1 to 5. That integer will be converted to a star value
# * When my review is succesfully added I am redirected to the show page of the chair I just reviewed

  scenario 'fill out review' do

    chair = FactoryGirl.create(:chair)
    user = FactoryGirl.create(:user)

    login_as(user)
    visit new_chair_review_path(chair.id)


    fill_in 'Body', with: 'Great chair'
    select '5', from: 'Rating'
    click_button 'Create Review'

    expect(page).to have_content 'Chair was successfully created.'
    expect(page).to have_content 'Great chair'
    expect(page).to have_content '5'
  end

end
