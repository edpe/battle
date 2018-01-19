feature 'Attack' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Ed attacked Lewis'
  end

  scenario 'player 2 attacks player 1 and receives a confirmation' do
    sign_in_and_play
    attack
    click_link 'Attack'
    expect(page).to have_content 'Lewis attacked Ed'
  end

  scenario 'player cna choose attack type' do
    sign_in_and_play
    expect(page).to have_content "Karate Chop"
  end
end
