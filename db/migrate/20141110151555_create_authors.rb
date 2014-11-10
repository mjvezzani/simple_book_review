class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name, :last_name

      t.timestamps
    end
  end
end
