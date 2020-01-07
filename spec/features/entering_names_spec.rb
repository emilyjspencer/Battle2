feature 'Testing Infastructure' do
  scenario 'Players can input their names' do
    sign_in_and_play
    expect(page).to have_content "Players successfully created, Asia vs. Marcello"
  end
end