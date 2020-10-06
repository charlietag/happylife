class CreateHappylifeComments < ActiveRecord::Migration[6.0]
  def change
    create_table :happylife_comments do |t|
      t.integer :book_id
      t.text :text

      t.timestamps
    end
  end
end
