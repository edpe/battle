def sign_in_and_play
  visit ('/')
  fill_in('player1_name', :with => 'Ed')
  fill_in('player2_name', :with => 'Phil')
  click_button 'Submit'
end
