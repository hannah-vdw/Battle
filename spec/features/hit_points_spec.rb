# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "Show player's hit points" do
  scenario "Player 2's HP is displayed on entering game" do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content('Shaun HP: 60')
  end
end