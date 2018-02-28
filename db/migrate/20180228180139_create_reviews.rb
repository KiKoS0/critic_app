class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :prof, foreign_key: true
      t.string :typer_name
      t.string :typer_email

      t.timestamps
    end
    add_index :reviews, [:prof_id, :created_at]
  end
end
