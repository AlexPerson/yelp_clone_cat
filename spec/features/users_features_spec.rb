# /require 'rails_helper'

feature 'Users can sign in and out' do
  context 'user not signed in and on the homepage' do
    it "should see a 'sign in' link and a 'sign up' link" do
    visit('/')
    expect(page).to have_link('Sign in')
    expect(page).to have_link('Sign up')
  end

    it "should not see 'sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end
end

  context 'user signed in on the homepage' do
    before do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
    end

    it "should see 'sign out' link" do
      visit('/')
      expect(page).to have_link('Sign out')
    end

    it "should not see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end
  end
end

feature 'Users are restricted in what they can do' do

    let(:restaurant)      { Restaurant.create    }
    let(:user)            { User.create }

    context 'users can only delete or edit restaurants they\'ve created' do

      it 'a restaurant belongs to a user' do
        expect(restaurant).to belong_to(:user)
      end

      xit 'restaurants created by a user other than the one logged in cannot be deleted' do
        user = build :user
        sign_up(user)
        restaurant = build :restaurant
        add_restaurant(restaurant)
        click_on 'Sign out'
        foreign_user = build :user
        sign_up(foreign_user)
        delete_restaurant(restaurant)
        expect(page).to have_content(restaurant.name)
      end

  end

end
