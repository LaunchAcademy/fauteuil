require 'rails_helper'

feature 'user views restaurants', %q(
  As a user I want to be able to see all the previous posts so that
  I can know what chairs are outhere

  Acceptance Criteria

  CHECK IF SIGNED IN
  I want to be able to see the picture (if there is one), the name, and the rating of each chair (DONE except raiting)
  All ratings on that page are the average of all the ratings from the
  All posts should be ranked according to their rating
  Each picture/or name should take me to the show page of that chair so that I can see its details
  I should be able to search for a specfic chair.
  I should be able to navigate through the different pages.
) do

  scenario 'view list of chairs' do
    chairs = FactoryGirl.create_list(:chair, 6)

    visit chairs_path

    chairs.each do |chair|
      expect(page).to have_content(chair.name, chair.picture)
    end
  end

end