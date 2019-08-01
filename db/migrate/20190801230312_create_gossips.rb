class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
    #Add link to user
      t.belongs_to :user
    #Add link to tags
      t.has_many :tags

      t.timestamps
    end
  end
end
