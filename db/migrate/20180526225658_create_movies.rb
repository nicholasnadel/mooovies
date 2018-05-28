class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.string :genre
      t.integer :movie_reviews

      t.timestamps
    end
  end
end
