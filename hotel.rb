class Hotel
  attr_accessor :name, :rating, :city, :total_rooms, :features
  @@hotels = []
  # Hotel.new name:, 'Danny' rating: 5

  # def initialize(name:, rating:, city: prarms)
  def initialize(name:, rating:, city:, total_rooms:, features:)
    @name = name
    @rating = rating
    @city = city
    @total_rooms = total_rooms
    @features = features
    @@hotels << self
    # self.class.count += 1

  end

  def self.all
    @@hotels
  end

  def self.last
    @@hotels.last
  end

  def stars
    a = @rating
    "⭐️" * a
  end

  def slug
    @name.downcase.gsub(' ', '_')
  end

end
