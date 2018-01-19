feature 'Enter names' do
  scenario 'Expects players to fill in their names (in a form), submit that form, and see those names on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Ed vs Lewis'
  end
end
