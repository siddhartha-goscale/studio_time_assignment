class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|

      t.string :name, null: false
     	t.string :details, null: false
    	t.string :minimum_booking, null: false
    	t.string :type
    	t.string :hours_of_operation
    	t.string :past_clients
    	t.string :audio_samples
  		t.string :amenities
    	t.string :equipments
    	t.string :rules, null:false
    	t.float :price_per_hour , null:false
    	t.boolean :audio_engineer
		
		t.references :imageable, polymorphic: true, index: true
      
      t.timestamps
    end
  end
end
