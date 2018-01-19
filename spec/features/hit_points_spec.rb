feature 'Hit points' do
  scenario 'Player 1 can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Lewis: HP100'
  end

  scenario 'Player 2 loses 10 hit points when attacked' do
    sign_in_and_play
    attack
    expect(page).to have_content 'Lewis: HP90'
  end

  scenario 'Player 1 loses 10 hit points when attacked' do
    sign_in_and_play
    attack
    attack
    expect(page).to have_content 'Lewis: HP90'
  end

  scenario 'Player 1 can see their own hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ed: HP100'
  end
end
