class AddImageToStatusUpdate < ActiveRecord::Migration[5.0]
  def change
    add_column :status_updates, :image, :string
  end
end
