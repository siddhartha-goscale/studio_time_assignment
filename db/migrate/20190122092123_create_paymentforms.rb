class CreatePaymentforms < ActiveRecord::Migration[5.2]
  def change
    create_table :paymentforms do |t|

     	t.string :name
    	t.string :address
    	t.string :firstname
    	t.string :lastname
    	t.string :bank_account_number
    	t.string :bank_Id
    	t.string :card_number
    	t.string :name_on_card
    	t.string :cvv
    	t.string :city
    	t.string :state


      t.timestamps
    end
  end
end
