require('rspec')
require('rock_paper_scissors')
require('check_for_winner')

describe("Fixnum#rock_paper_scissors") do
  it('will return rock when user input is 0') do
    expect(0.rock_paper_scissors ).to(eq("rock"))
  end
  it('will return paper when user input is 1') do
    expect(1.rock_paper_scissors ).to(eq("paper"))
  end
  it('will return scissors when user input is 2') do
    expect(2.rock_paper_scissors ).to(eq("scissors"))
  end
end
