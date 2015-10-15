module UserHelper

  def sign_up(user)
     visit '/users/sign_up'
     fill_in :user_email, with: user.email
     fill_in :user_password, with: user.password
     fill_in :user_password_confirmation, with: user.password_confirmation
     click_button "Sign up"
  end

  def sign_in(user)
     visit '/users/sign_in'
     fill_in :user_email, with: user.email
     fill_in :user_password, with: user.password
     click_button "Sign in"
  end

  def add_restaurant(restaurant)
     visit '/restaurants'
     click_link 'Add a restaurant'
     fill_in :restaurant_name, with: restaurant.name
     click_button "Create Restaurant"
  end

  def delete_restaurant(restaurant)
     visit '/restaurants'
     click_link "Delete #{restaurant.name}"
  end

end