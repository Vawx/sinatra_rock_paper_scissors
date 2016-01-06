require('sinatra')
require('rock_paper_scissors')
require('check_for_winner')

describe("Array#check_for_winner") do
  it("will check that player one who chooses rock will lose against player two, who chooses paper") do
    expect([0.rock_paper_scissors, 1.rock_paper_scissors].check_for_winner).to(eq("Player Two wins!"))
  end
end
