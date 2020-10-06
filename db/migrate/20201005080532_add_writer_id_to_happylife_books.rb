class AddWriterIdToHappylifeBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :happylife_books, :writer_id, :integer
  end
end
