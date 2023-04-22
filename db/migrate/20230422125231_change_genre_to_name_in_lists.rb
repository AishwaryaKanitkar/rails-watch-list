class ChangeGenreToNameInLists < ActiveRecord::Migration[7.0]
  def change
    rename_column :lists, :genre, :name
  end
end
