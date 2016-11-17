class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :client_id
      t.string :client_secret
      t.string :client_token

      t.timestamps
    end
  end
end
