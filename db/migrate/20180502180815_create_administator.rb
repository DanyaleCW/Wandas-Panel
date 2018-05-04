class CreateAdministator < ActiveRecord::Migration[5.2]
  def change
    create_table :administators do |t|
      t.string :user_name
      t.string :email
      t.string :password
    end
  end
end
