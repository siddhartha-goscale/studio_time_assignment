class CreateSessionTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :session_tokens do |t|

     t.string :session_token
     t.references :user
     t.datetime :expiry_date

      t.timestamps
    end
  end
end
