class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      #references cf lesson 3.1
      t.references :sender , index: true
      t.references :recipient , index: true 

      t.timestamps
    end
  end
end
