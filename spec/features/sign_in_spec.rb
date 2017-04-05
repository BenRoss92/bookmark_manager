feature 'let a user sign in' do
  scenario 'a user signs in' do
    visit '/sign_in'
    fill_in('email', with: 'joseph@coffeenutcase.com')
    fill_in('password', with: 'iamjoseph')
    click_button('Sign In')
    expect(page).to have_content('Welcome joseph@coffeenutcase.com')
  end
end
