feature 'Switching turns' do
  scenario 'Players can switch goes' do
    sign_in_and_play
    expect(page).to have_content 'It\'s Asia\'s turn!'
  end
end 