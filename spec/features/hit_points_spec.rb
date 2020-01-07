feature "Hit Points" do
  scenario "Can check Player 2s hit points" do
    sign_in_and_play
    expect(page).to have_content "Marcello: 60HP"
  end

  scenario "can attack player 2 and get confirmation" do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content "Asia attacked Marcello"
  end
end