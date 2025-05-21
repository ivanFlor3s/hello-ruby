# db/migrations/001_create_users.rb
Sequel.migration do
    change do
      create_table(:directions) do
        primary_key :id
        Integer :number, null: false, unique: true
        String  :street
        DateTime :created_at
      end
    end
  end