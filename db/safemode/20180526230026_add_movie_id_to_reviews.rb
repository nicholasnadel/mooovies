class AddMovieIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :movie_id, :string
    add_index :reviews, :movie_id
  end
end
