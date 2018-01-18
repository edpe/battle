feature 'Attack' do
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Ed attacked Alex'
  end
end
