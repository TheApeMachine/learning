# A friend of yours is planning a trip across the country via train, 
# but they can't read the train information! They've asked you to help 
# and they want you to check if they can get from place to place on the 
# rail network. You hit a snag while trying to help when you've found 
# that the trains don't always return to a station they've departed from! 
# That is to say that a train route might go from Station X to Station Y, 
# but it might not go from Station Y to Station X.

# They love train trips so they don't care how many trains it takes as 
# long as it's possible to reach their target destination.

require './solution'

RSpec.describe Solution, "#possible?" do

  context "from ADL to BRI" do
    it "should return true" do
      solution = Solution.new
      expect(solution.possible?('ADL', 'BRI')).to eq(true)
    end
  end

  context "from MEL to BRI" do 
    it "should return true" do
      solution = Solution.new
      expect(solution.possible?('MEL', 'BRI')).to eq(true)
    end
  end
  
  context "from SYD to ADL" do 
    it "should return false" do
      solution = Solution.new
      expect(solution.possible?('SYD', 'ADL')).to eq(false)
    end
  end

end
