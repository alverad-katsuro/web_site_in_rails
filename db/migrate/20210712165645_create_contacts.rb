class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :send_to_one
      t.string :send_to_two
      t.string :send_to_three
      t.string :send_to_four
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
