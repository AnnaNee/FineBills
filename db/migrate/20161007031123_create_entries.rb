class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.datetime :released_at
      t.text :description
      t.integer :amount_cents
      t.string :kind

      t.timestamps
    end
  end
end
