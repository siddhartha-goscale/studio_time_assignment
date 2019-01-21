class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

  		t.string :firstname, null: false
     	t.string :lastname, null: false
      t.string :email, null: false
      t.string :contact, null: false
    	t.string :bio
    	t.string :website_url
    	t.string :facebook_url
    	t.string :twitter_handle
    	t.string :instagram_handle
    	t.string :streanplayer_url
    	t.references :imageable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
