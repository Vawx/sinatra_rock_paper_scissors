require('rspec')
require('rock_paper_scissors')
require('check_for_winner')

describe("Array#check_for_winner") do
  it("will check that player one who chooses rock will lose against player two, who chooses paper") do
    expect([0.rock_paper_scissors, 1.rock_paper_scissors].check_for_winner).to(eq("Player Two wins!"))
  end
  it("will check that player two who chooses paper will lose against player one, who chooses scissors") do
    expect([2.rock_paper_scissors, 1.rock_paper_scissors].check_for_winner).to(eq("Player One wins!"))
  end
  it("will result int a TIE if both player choose rock") do
    expect([0.rock_paper_scissors, 0.rock_paper_scissors].check_for_winner).to(eq("TIE!"))
  end
end
