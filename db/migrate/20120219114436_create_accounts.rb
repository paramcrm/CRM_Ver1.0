class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :phone_no
      t.string :email
      t.string :address
      t.string :country
      t.string :city
      t.string :zipcode

      t.timestamps
    end
  end
end
