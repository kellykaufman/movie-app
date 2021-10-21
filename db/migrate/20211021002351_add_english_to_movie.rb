class AddEnglishToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :english, :string
    change_column_default :movies, :english, :true
  end
end
