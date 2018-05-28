class AddFieldsToMovie < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :overview, :string
    add_column :movies, :vote_average, :string
    add_column :movies, :backdrop_path, :string
  end
end
