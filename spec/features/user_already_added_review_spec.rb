require 'rails_helper'

feature 'user already reviewed a chair', %q(
 As a user,
 I want to be prevented from adding several reviews to a same chair
 so that the reviews remain relevant and accurate.

 Acceptance criteria:

 If I already wrote a review for a chair, when I access that same page,
 the review form should not be avaiable to me and I should be warned
 that I already voted.

 If the chair has no reviews, as a user I should be notified that I'm
 the first one to visit the page
)do

 scenario 'user visit chair that he already reviewed' do
    chair = FactoryGirl.create(:chair)
    user = FactoryGirl.create(:user)

    login_as(user)
    visit new_chair_review_path(chair.id)


    fill_in 'Body', with: 'Great chair'
    select '5', from: 'Rating'
    click_button 'Create Review'

    expect(page).to have_content 'You already reviewed this chair buddy!'
 end

 scenario 'no reviews have been added yet' do
    user = FactoryGirl.create(:user)
    category = FactoryGirl.create(:category)
    login_as(user)
    visit new_chair_path

    fill_in "Name", with: "Bean Bag"
    fill_in "Location", with: "Boston"
    fill_in "Manufacturer", with: "Ikea"
    fill_in "Description", with: "This is a sleepy kind of chair"

    select category.name, from: "chair[category_id]"

    click_on "Add Chair"

    expect(page).to have_content("Bean Bag")
    expect(page).to have_content('There are no reviews associated to
                                  this chair yet, be the first one!')
 end
end
