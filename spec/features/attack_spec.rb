feature 'Attack' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Ed attacked Alex'
  end

  scenario 'player 2 attacks player 1 and receives a confirmation' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Ok'
    click_link 'Attack'
    expect(page).to have_content 'Alex attacked Ed'
  end
end
