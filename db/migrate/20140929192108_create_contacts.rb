class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.integer :user_id

      t.timestamps
    end

    add_index :contacts, [:name, :email], unique: true
  end
end
