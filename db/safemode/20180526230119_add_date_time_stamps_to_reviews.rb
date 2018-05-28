class AddDateTimeStampsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :created_at, :datetime, null: true
    add_column :reviews, :updated_at, :datetime, null: true
  end
end
