class CreateUsersses < ActiveRecord::Migration
  def change
    create_table :usersses do |t|
      t.string :mae
      t.string :email

      t.timestamps
    end
  end
end
