class Add < ActiveRecord::Migration[5.2]
  def change
     add_column :books, :title, :integer
  end
end
