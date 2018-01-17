feature 'Enter names' do
  scenario 'Expects players to fill in their names (in a form), submit that form, and see those names on-screen' do
    visit ('/')
    fill_in('player1_name', :with => 'Ed')
    fill_in('player2_name', :with => 'Phil')
    click_button 'Submit'
    expect(page).to have_content 'Ed vs Phil'
  end
end

feature 'Hit points' do
  scenario 'Player 1 can see Player 2 hit points' do
    visit('/')
    fill_in('player1_name', :with => 'Ed')
    fill_in('player2_name', :with => 'Phil')
    click_button 'Submit'
    expect(page).to have_content 'Phil: HP100'
  end
end
