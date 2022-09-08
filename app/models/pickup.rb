class Pickup < ApplicationRecord
  validates_presences_of :work_key, on: :create, message: "can't be blank"
  validates_presences_of :pickup_schedule, on: :create, message: "can't be blank"
  validates_presences_of :name, on: :create, message: "can't be blank"
  validates_presences_of :phone_number, on: :create, message: "can't be blank"
end
