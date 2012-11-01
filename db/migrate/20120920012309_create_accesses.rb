class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.belongs_to :user

      t.string :code
      t.string :username  #users self chosen nickname
      t.string :location  #users location

      t.timestamps
    end
  end
end
