class CreateVisitors < ActiveRecord::Migration[6.1]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :university
      t.string :country
      t.string :begin
      t.string :depart

      t.timestamps
    end
  end
end
