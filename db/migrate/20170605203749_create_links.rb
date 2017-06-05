class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :url
      t.integer :read_count, default: 1

      t.timestamps
    end
  end
end
