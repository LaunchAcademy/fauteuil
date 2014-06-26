require 'rails_helper'

feature 'user adds vote' do

# Acceptance Criteria:
# * For every review, check if user has already voted or not.
# * ONLY display upvote and downvote buttons for the reviews the signed-in user hasn't voted on yet.
# * 2 counts -> count of upvotes and count of downvotes.
# * Once you vote, redirect on same page with updated ranking.
# * Ranked according to upvotes only not downvotes

  scenario 'add upvote to review' do

    chair = FactoryGirl.create(:chair)
    user = FactoryGirl.create(:user)

    # Create vote by 1st user and default to one upvote
    review = FactoryGirl.create(:review, chair_id: chair.id, user_id: user.id)
    vote = FactoryGirl.create(:vote, review_id: review.id, user_id: user.id)

    # login as second user and add upvote
    user2 = FactoryGirl.create(:user)

    login_as(user2)
    visit chair_path(chair.id)

    click_button 'Vote +1'

    expect(page).to have_content '2 upvotes'
    expect(page).to have_content '0 downvotes'

  end

  scenario 'add downvote to review' do

    chair = FactoryGirl.create(:chair)
    user = FactoryGirl.create(:user)

    # Create vote by 1st user and default to one upvote
    review = FactoryGirl.create(:review, chair_id: chair.id, user_id: user.id)
    vote = FactoryGirl.create(:vote, review_id: review.id, user_id: user.id)

    # login as second user and add upvote
    user2 = FactoryGirl.create(:user)

    login_as(user2)
    visit chair_path(chair.id)

    click_button 'Vote -1'

    expect(page).to have_content '1 upvote'
    expect(page).to have_content '1 downvote'

  end

  scenario 'one vote per user' do

    chair = FactoryGirl.create(:chair)
    user = FactoryGirl.create(:user)

    # Create vote by 1st user and default to one upvote
    review = FactoryGirl.create(:review, chair_id: chair.id, user_id: user.id)
    vote = FactoryGirl.create(:vote, review_id: review.id, user_id: user.id)

    login_as(user)
    visit chair_path(chair.id)

    expect(page).to have_content 'Already Voted'


  end

end
