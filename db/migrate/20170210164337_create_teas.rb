class CreateTeas < ActiveRecord::Migration[5.0]
  def change
    create_table :teas do |t|

      t.column :name, :string
      t.column :cost, :integer
      t.column :country, :string

      t.timestamps
    end
  end
end
