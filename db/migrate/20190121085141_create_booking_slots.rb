class CreateBookingSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_slots do |t|

    	t.references :booking
    	t.references :slot

      t.timestamps
    end
  end
end
