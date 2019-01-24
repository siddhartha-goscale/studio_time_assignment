class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|

      t.datetime   :starttime
      t.datetime   :endtime
	 
 	  t.references :booking

      t.timestamps
    end
  end
end
