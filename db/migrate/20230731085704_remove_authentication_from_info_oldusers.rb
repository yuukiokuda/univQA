class RemoveAuthenticationFromInfoOldusers < ActiveRecord::Migration[7.0]
  def change
    remove_column :info_oldusers, :authentication, :boolean
  end
end
