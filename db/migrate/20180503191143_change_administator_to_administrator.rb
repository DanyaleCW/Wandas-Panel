class ChangeAdministatorToAdministrator < ActiveRecord::Migration[5.2]
  def change
  rename_table :administators, :administrators
  end
end
