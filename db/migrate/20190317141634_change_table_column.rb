class ChangeTableColumn < ActiveRecord::Migration[5.1]
  def change
    change_table :stores do |t|
      t.change :description, :text
    end
  end
end
