class CreateGames < ActiveRecord::Migration[6.0]
  ActiveRecord::Schema.define do
    enable_extension 'hstore' unless extension_enabled?('hstore')
  end
  
  def change
    create_table :games do |t|
      t.string 'name'
      t.string 'user'
      t.hstore 'settings'
      t.boolean 'grid', array: true
      t.timestamps
    end
  end
end
