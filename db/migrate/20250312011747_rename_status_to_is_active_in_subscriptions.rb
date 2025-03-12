class RenameStatusToIsActiveInSubscriptions < ActiveRecord::Migration[7.1]
  def change
    rename_column :subscriptions, :status, :isActive
  end
end
