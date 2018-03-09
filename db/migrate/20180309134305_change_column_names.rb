class ChangeColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :typer_email, :email
    rename_column :reviews, :typer_name, :name
  end
end
