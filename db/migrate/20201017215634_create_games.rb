class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string 'name'
      t.string 'user'
      t.integer 'rows'
      t.integer 'cols'
      t.integer 'cell_size'
      t.integer 'speed'
      t.boolean 'cells', array: true
      t.timestamps
    end
  end
end
