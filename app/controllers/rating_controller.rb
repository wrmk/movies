class RatingController < ApplicationController
  before_action :set_movie, only: %i[ rate rate_update ]
  before_action :authenticate_user!, only: [:rate_update]

  def rate
    respond_to do |format|
      format.js
    end
  end

  def rate_update
    if current_user.rated.exclude?(@movie.id) && rate_allowed then
      current_user.rated << @movie.id
      current_user.save

      increment_rate(@movie.rating)
    end
  end

  def increment_rate(rating)
      rating.increment(:overall, rate_params)
      rating.increment(:votes, 1)
      rating.save
  end

  def rate_allowed
    (1..10).include?(rate_params)
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end 
    def rate_params
      params[:score] = params[:score].to_i   
    end 
end
