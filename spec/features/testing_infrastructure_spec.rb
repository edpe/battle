feature 'Enter names' do
  scenario 'Expects players to fill in their names (in a form), submit that form, and see those names on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Ed vs Alex'
  end
end

feature 'Hit points' do
  scenario 'Player 1 can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Alex: HP100'
  end
end

feature 'Attack' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Ed attacked Alex'
  end
end
