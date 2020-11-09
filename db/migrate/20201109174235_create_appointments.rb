class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :purpose
      t.string :message
      t.boolean :complete, default: false
      t.datetime :appointment_time
      t.integer :employee_id
      t.integer :client_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
