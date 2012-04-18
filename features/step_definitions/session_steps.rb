Given "I am signed in"  do
  Fabricate(:user, username: 'foo', password: 'bar')
  click_link('sign_in')
  fill_in
end
