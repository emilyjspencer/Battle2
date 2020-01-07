def sign_in_and_play
  visit('/')
  fill_in :Player_1, with: "Asia"
  fill_in :Player_2, with: "Marcello"
  click_button "Submit"
end