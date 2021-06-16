# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
feature 'Enter names' do
  scenario 'takes user input from form and displays this on the page' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content('Hannah vs. Shaun')
  end
end