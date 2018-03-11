class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.references :review, foreign_key: true
      t.integer :number, default: 1

      t.timestamps
    end
  end
end
