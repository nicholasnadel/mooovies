class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review_id
      t.string :author
      t.text :content
      t.string :url
    end
  end
end
