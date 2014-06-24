require 'rails_helper'

feature 'user adds a chair',%q( Add a Chair
  As a user I want to be able to add a chair to the website so that I can see it in the index page

  Acceptance Criteria

  I should be signed in!
  I can add a chair with: a new picture, a name, a breif desciption(optional),and its characteristics (some will be tick form, other fill-ins)
  I should be alerted if any field is filled-in in the wrong fashion
  If the chair is succesfully saved, I should be alerted so and redirected to the newly chair show page.
  I should be notified by email everytime a user reviews my post.
) do

  scenario 'creates a valid chair' do
    category = FactoryGirl.create(:category)
    user = FactoryGirl.create(:user)

    visit '/chairs/new'

    fill_in "Name", with: "Bean Bag"
    fill_in "Location", with: "Boston"
    fill_in "Manufacturer", with: "Ikea"
    fill_in "Description", with: "This is a sleepy kind of chair"

    select category.name, from: "chair[category_id]"

    click_on "Add Chair"

    expect(page).to have_content("Bean Bag")
  end

  scenario 'add an invalid chair' do
    #to be done soon
  end

end
