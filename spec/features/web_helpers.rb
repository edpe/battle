def sign_in_and_play
  visit ('/')
  fill_in('player1_name', :with => 'Ed')
  fill_in('player2_name', :with => 'Lewis')
  click_button 'Submit'
end

def attack
  click_link 'Attack'
  click_button 'Ok'
end
