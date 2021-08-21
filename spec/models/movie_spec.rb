require 'rails_helper'

RSpec.describe Movie, type: :model do
  before do
    @movie = Movie.create(title: "Fast n Furios",text: "crazy racers have family", category: "comedy")
  end

  it "No rated movie" do
    @movie.rating = Rating.create
    expect(@movie.rating.overall).to eql 0
  end 

  it "Not allowed category" do
    @movie.category = 'Drama'
    @movie.validate

    expect(@movie.errors[:category]).to include('is not included in the list')
  end

end