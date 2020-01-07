# feature 'Testing Infastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infastructure working!'
#   end
# end

feature 'Testing Infastructure' do
  scenario 'Players can input their names' do
    visit('/')
    fill_in :Player_1, with: "Asia"
    fill_in :Player_2, with: "Marcello"
    click_button "Submit"
    expect(page).to have_content "Players successfully created, Asia vs. Marcello"
  end
end