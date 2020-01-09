feature "Hit Points" do
  scenario "Can check Player 2s hit points" do
    sign_in_and_play
    expect(page).to have_content "Marcello hp = 100"
  end

end