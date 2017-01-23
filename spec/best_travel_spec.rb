require './../ruby_programs/best_travel'

describe BestTravel do
  let(:best_travel) { BestTravel.new }
  let(:max_distance) { 174 }
  let(:max_cities) { 3 }
  let(:list_of_distances) { [50, 55, 57, 58, 60] }

  it "get maximum traveled distance" do
    expect(best_travel.distance_travelled(max_distance, max_cities, list_of_distances)).to be < 174
  end

  it "cities visited" do
    expect(best_travel.cities_visited(max_distance, max_cities, list_of_distances)).to match [55, 58, 60]
  end

end
