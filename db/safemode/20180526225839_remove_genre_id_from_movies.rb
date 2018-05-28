class AddGenreIdsToMoviesAsString < ActiveRecord::Migration[5.1]
  def change
      add_column :movies, :genre_id, :string, default: [], array: true
  end
end
