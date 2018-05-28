class AddGenreIdsToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :genre_id, :integer, default: [], array: true
  end
end
