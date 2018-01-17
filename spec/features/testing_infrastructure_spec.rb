feature 'Enter names' do
  scenario 'Expects players to fill in their names (in a form), submit that form, and see those names on-screen' do
    visit ('/')
    fill_in('player1_name', :with => 'Ed')
    fill_in('player2_name', :with => 'Phil')
    click_button 'Submit'
    expect(page).to have_content 'Ed vs Phil'
  end
end
