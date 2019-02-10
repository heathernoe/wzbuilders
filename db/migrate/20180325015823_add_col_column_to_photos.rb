class AddColColumnToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :col, :integer
  end
end
