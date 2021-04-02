class CreateEmployies < ActiveRecord::Migration[6.1]
  def change
    create_table :employies do |t|
      t.string :name
      t.integer :phone_num
      t.string :email
      t.date :date_of_birth
      t.string :address
      t.string :address1
      t.string :city
      t.integer :pincode

      t.timestamps
    end
  end
end
