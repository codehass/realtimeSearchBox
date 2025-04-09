class CreateSearches < ActiveRecord::Migration[8.0]
  def change
    create_table :searches do |t|
      t.text :query
      t.references :visitor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
