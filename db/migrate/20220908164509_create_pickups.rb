class CreatePickups < ActiveRecord::Migration[7.0]
  def change
    create_table :pickups do |t|
      t.string :work_key
      t.datetime :borrow_schedule
      t.datetime :pickup_schedule
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
