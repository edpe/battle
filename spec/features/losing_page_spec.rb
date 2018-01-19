feature 'losing_page' do
  scenario 'Player loses and goes to losing page' do
    visit('/lose')
    expect(page).to have_text "YOU'VE LOST"
  end
end
