feature 'changes active player' do
  scenario 'displays that it is the first player\'s turn' do
    sign_in_and_play
    expect(page).to have_content("Current player: Ed")
  end

  scenario 'displays that it is the second player\'s turn after attack' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Ok'
    expect(page).to have_content("Current player: Alex")
  end
end
