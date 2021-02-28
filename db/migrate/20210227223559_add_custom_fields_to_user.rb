class AddCustomFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :type, :string
    add_column :users, :active, :boolean
  end
end
