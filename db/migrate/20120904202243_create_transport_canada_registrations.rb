class CreateTransportCanadaRegistrations < ActiveRecord::Migration
  def change
    create_table :transport_canada_registrations do |t|
      t.string :accesscode
      t.string :logger_partvin
      t.string :callresult
      t.string :l_type
      t.string :batch
      t.string :province
      t.string :preflanguage
      t.datetime :start_date
      t.datetime :end_date
      t.string :firstname
      t.string :lastname
      t.string :phonenumber
      t.string :e_mailaddress, null: false, unique: true
      t.string :number
      t.string :street
      t.string :city
      t.string :postalcode
      t.string :vehicle
      t.string :vin
      t.string :province
      t.string :havevehicle
      t.string :whynot
      t.string :since_day
      t.string :since_month
      t.string :since_year
      t.string :name_2
      t.string :gender_2
      t.string :yob_2
      t.string :name_3
      t.string :gender_3
      t.string :yob_3
      t.string :name_4
      t.string :gender_4
      t.string :yob_4
      t.string :name_5
      t.string :gender_5
      t.string :yob_5
      t.string :name_6
      t.string :gender_6
      t.string :yob_6
      t.string :age_range_2
      t.string :age_range_3
      t.string :age_range_4
      t.string :age_range_5
      t.string :age_range_6
      t.string :yearofbirthanswered
      t.string :age
      t.string :agerange
      t.string :gender
      t.string :typeoffuel
      t.string :transmission
      t.string :completedonline
      t.string :finalstatus
      t.integer :logger_id
      t.datetime :assigndate
      t.datetime :returndate

      t.timestamps
    end
    add_index(:transport_canada_registrations, :e_mailaddress, unique: true)
  end
end
