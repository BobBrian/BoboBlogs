class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :screenname, :string
    add_column :users, :role, :integer
  end
end
