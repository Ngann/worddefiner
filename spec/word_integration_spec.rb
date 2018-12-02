require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the words path', {:type => :feature}) do
  it('creates new Word object') do
    visit('/')
    fill_in('key', :with => 'Cat')
    fill_in('definition', :with => 'It is furry')
    click_button('Enter')
    expect(page).to have_content('Cat')
  end
end
