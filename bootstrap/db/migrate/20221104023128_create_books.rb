class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_id
      t.string :book_name
      t.string :book_author

      t.timestamps
    end
  end
end
