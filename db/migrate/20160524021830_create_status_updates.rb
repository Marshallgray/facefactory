class CreateStatusUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :status_updates do |t|
      t.text :update
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
