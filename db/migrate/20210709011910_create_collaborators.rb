class CreateCollaborators < ActiveRecord::Migration[6.1]
  def change
    create_table :collaborators do |t|
      t.string :name
      t.string :institution
      t.string :link
      t.string :contact

      t.timestamps
    end
  end
end
