require('sinatra')
require('rock_paper_scissors')

describe("Fixnum#rock_paper_scissors") do
  it('will return rock when user input is 0') do
    expect( 0.rock_paper_scissors ).to(eq("rock"))
  end
end
