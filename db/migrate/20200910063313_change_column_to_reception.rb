class ChangeColumnToReception < ActiveRecord::Migration[6.0]
  def change
    change_column :receptions, :name, :string, null: false
    change_column :receptions, :purpose, :string, null: false
    add_column :receptions, :organization, :string
  end
end
