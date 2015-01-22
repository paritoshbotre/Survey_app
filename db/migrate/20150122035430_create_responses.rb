class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :options, index: true, null: false
      t.references :users, index: true, null: false
      t.timestamps null: false
    end
  end
end
