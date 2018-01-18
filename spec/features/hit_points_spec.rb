feature 'Hit points' do
  scenario 'Player 1 can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Alex: HP100'
  end

  scenario 'Player 2 loses 10 hit points when attacked' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Ok'
    expect(page).to have_content 'Alex: HP90'
  end
end
