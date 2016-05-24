class ChangeStatusUpdateAttribute < ActiveRecord::Migration[5.0]
  def change
    rename_column :status_updates, :update, :status
  end
end
