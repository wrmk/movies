class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]
  before_action :check_if_admin, only: %i[ edit create update destroy ]
  helper_method :rated, :counter

  # GET /movies or /movies.json
  def index
    if params[:category] && params[:category] != 'all'
      @movies = Movie.where(category: params[:category]).page params[:page]
      @selected_category = params[:category]
    else
      @movies = Movie.page params[:page]
      @selected_category = 'all'
    end
  end

  # GET /movies/1 or /movies/1.json
  def show
    @votes = @movie.rating.votes
    if @movie.rating.overall != 0
      @rating = @movie.rating.overall / @votes
    else
      @rating = 0
    end
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies or /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
        @movie.rating = Rating.create
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1 or /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: "Movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def rated(id)
    if current_user
      current_user.rated.include?(id) ? true : false
    end
  end

  def counter(index)
    index + 1 + (@movies.current_page - 1) * @movies.page.limit_value
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:title, :text, :category)
    end

    def check_if_admin
      redirect_to root_path unless current_user.is_admin?
    end
end
