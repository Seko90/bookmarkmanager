class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :age
      t.string :text
      t.string :email

      t.timestamps
    end
  end
end
