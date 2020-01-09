feature "attacking player 2" do
  scenario "can attack player 2 and get confirmation" do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content "Asia attacked Marcello"
  end
end