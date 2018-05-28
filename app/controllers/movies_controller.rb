class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit destroy]
  before_action :set_movie_update, only: %i[update]
  before_action :set_sort, only: :index

  def index
    @movies = Movie.all if params[:sort] == 'default'
    @movies = Movie.title_sort if params[:sort] == 'title'
    @movies = Movie.release_sort if params[:sort] == 'release'
    @movies = Movie.genre_sort if params[:sort] == 'genre'
  end

  def show; end

  def update
    @movie.update!(movie_params)
    render json: { response: 'OK' } if @movie.save
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def set_movie_update
    @movie = Movie.find_by(movie_id: params[:movie_id])
  end

  def set_sort
    params[:sort] ||= 'default'
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def movie_params
    params.require(:movie).permit(:title,
                                  :release_date,
                                  :genre,
                                  :movie_reviews,
                                  :movie_id,
                                  :overview,
                                  :vote_average,
                                  :backdrop_path)
  end
end
