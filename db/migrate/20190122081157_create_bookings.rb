class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|

     	t.string :hours
     	t.string :sub_total
     	t.string :studio_time_fee
     	t.string :total_amount

     	t.references :user

      t.timestamps
    end
  end
end
