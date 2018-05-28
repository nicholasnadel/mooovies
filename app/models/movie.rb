# Class to model the movie data that comes from the API
class Movie < ApplicationRecord
  has_many :reviews, foreign_key: 'movie_id', class_name: 'Review', dependent: :destroy
  self.primary_key = 'movie_id'

  def self.title_sort
    order(:title)
  end

  def self.release_sort
    order(release_date: :desc)
  end

  def self.genre_sort
    order(:sorting_genre)
  end

  def image_path
    # backdrop_path.delete('/').delete('.jpg') if backdrop_path.present?
    backdrop_path
  end
end
