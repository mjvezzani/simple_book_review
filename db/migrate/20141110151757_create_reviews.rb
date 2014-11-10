class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :book_id, :user_id

      t.timestamps
    end
  end
end
