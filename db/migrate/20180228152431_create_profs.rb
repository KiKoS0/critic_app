class CreateProfs < ActiveRecord::Migration[5.1]
  def change
    create_table :profs do |t|
      t.string :name

      t.timestamps
    end
  end
end
