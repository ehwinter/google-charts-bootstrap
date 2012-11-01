class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.belongs_to :user
      t.integer :device

      t.timestamps

      
    end
  
  end
end
