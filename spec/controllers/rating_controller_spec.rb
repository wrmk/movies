require 'rails_helper'

RSpec.describe RatingController do
  before do
    @movie = Movie.create(title: "Fast n Furios",text: "crazy racers have family", category: "comedy")
    @movie.rating = Rating.create
  end

  it "increment votes and overall rating" do
    params = ActionController::Parameters.new(score: '5')
    allow(controller).to receive(:params).and_return(params)
    controller.increment_rate(@movie)
    
    expect(@movie.rating.overall).to eql 5
  end


  it 'check rate value between range 1..10' do
    params = ActionController::Parameters.new(score: '-15')
    allow(controller).to receive(:params).and_return(params)

    expect(controller.rate_allowed).to eql false
  end

end  