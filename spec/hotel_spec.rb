describe Hotel do

  let(:hotel1) { Hotel.new name: 'Hilton', rating: 5, city: 'London', total_rooms: 150, features: ['pool', 'steam room', 'gym'] }

  let(:hotel2) { Hotel.new name: 'Premier Inn',
                           rating: 1,
                           city: 'Leeds',
                           total_rooms: 15,
                           features: [] }

  before :each do
    Hotel.class_variable_set(:@@hotels, [])
  end

  it "should initialize" do
    expect(hotel1.name).to eq 'Hilton'
    expect(hotel1.rating).to eq 5
    expect(hotel1.city).to eq 'London'
    expect(hotel1.total_rooms).to eq 150
    expect(hotel1.features).to eq ['pool', 'steam room', 'gym']
  end

  it "should store hotels and make all of them available" do
    a = hotel1
    b = hotel2
    expect(Hotel.all).to eq [a, b]
  end

  it "should return the last hotel" do
    a = hotel1
    b = hotel2
    expect(Hotel.last).to eq b
  end

  it "should return the rating as stars" do
    a = hotel1
    expect(a.stars).to eq "⭐️⭐️⭐️⭐️⭐️"
  end

  it "should return a slug" do
    a = hotel2
    expect(a.slug).to eq "premier_inn"
  end
end
