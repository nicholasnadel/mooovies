class ChangeGenreIdToStringFromMovies < ActiveRecord::Migration[5.1]
  def change
    change_column :movies, :genre_id, :string
  end
end
