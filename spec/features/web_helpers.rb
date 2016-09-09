
  def add_link_no_submit
    visit '/links/new'
    fill_in('title', with: 'Codecademy')
    fill_in('url', with: 'www.codecademy.com')
  end

  def complete_signin
    visit '/sign_up'
    fill_in('email', with: 'hello@user.com')
    fill_in('password', with: 'iamjoseph')
    fill_in('password_confirmation', with: 'iamjoseph')
    click_button('Sign Up')
  end
