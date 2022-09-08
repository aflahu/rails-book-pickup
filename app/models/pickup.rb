class Pickup < ApplicationRecord
  validates_presence_of :work_key, on: :create, message: "can't be blank"
  validates_presence_of :pickup_schedule, on: :create, message: "can't be blank"
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :phone_number, on: :create, message: "can't be blank"
end
