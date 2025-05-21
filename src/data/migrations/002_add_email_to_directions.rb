Sequel.migration do
    change do
      alter_table(:directions) do
        add_column :email, String
      end
    end
  end