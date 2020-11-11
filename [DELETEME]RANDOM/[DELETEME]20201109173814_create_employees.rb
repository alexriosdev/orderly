class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.string :phone_number
      t.string :title
      t.string :office
      t.integer :department_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
