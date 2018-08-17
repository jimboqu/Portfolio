class AddImagesToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :images, :text
  end
end
