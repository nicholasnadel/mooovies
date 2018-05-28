class RemoveIndexReviewsOnMovieId < ActiveRecord::Migration[5.1]
  def change
    remove_index :reviews, column: :movie_id
  end
end
