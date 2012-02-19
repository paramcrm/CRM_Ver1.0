class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :salutation
      t.string :fname
      t.string :mname
      t.string :lname
      t.integer :phone_no
      t.string :email

      t.timestamps
    end
  end
end
