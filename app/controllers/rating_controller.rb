class RatingController < ApplicationController
  before_action :set_movie, only: %i[ rate rate_update ]

  def rate
    respond_to do |format|
      format.js
    end
  end

  def rate_update
    @movie.rating.increment(:overall, params[:score].to_i)
    @movie.rating.increment(:votes, 1)
    @movie.rating.save
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end    
end
