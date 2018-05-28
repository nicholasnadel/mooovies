class ChangeColumnToStringFromGenres < ActiveRecord::Migration[5.1]
  def change
    change_column :genres, :genre_id, :string
  end
end
