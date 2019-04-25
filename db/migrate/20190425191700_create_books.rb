class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, index: true
      t.text :subtitle
      t.string :isbn_10, index: true, unique: true
      t.string :isbn_13, index: true, unique: true
      t.text :description
      t.date :released_on
      t.references :publisher, foreign_key: true, index: true
      t.references :author, foreign_key: true, index: true

      t.timestamps
    end
  end
end
