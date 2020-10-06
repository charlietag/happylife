class CreateHappylifeBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :happylife_books do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
