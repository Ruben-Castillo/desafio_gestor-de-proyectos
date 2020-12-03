class ChangeDefaultToProjectStatus < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:projects, :status, 'Propuesta')
  end
end
