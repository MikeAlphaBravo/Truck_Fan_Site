class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.column :link, :string
      t.column :make, :string
      t.column :model, :string
      t.column :year, :string
      t.column :author, :string

      t.timestamps
    end
  end
end
