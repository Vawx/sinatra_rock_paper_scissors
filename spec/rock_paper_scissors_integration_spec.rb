require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock, paper, scissors score path', {:type => :feature}) do
  it('process user entry and determines a winner') do
    visit('/result')
    expect(page).to have_content("Player One wins!")
  end
end
