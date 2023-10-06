class CreateIdeas < ActiveRecord::Migration[7.0]
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :engine
      t.string :engineDocs
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
