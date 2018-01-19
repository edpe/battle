feature 'losing_page' do
  scenario 'Player 2 loses and goes to losing page' do
    visit('/lose')
    expect(page).to have_text "has lost!"
  end
end
