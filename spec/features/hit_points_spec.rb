feature "Hit Points" do
  scenario "Can check Player 2s hit points" do
    sign_in_and_play
    expect(page).to have_content "Marcello: 100HP"
  end

end