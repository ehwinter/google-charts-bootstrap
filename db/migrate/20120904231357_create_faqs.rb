class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|

      t.string :question
      t.text :answer
      t.boolean :display, default: true

      t.timestamps
    end
  end
end
