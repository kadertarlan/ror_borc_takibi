json.array!(@debts) do |debt|
  json.extract! debt, :id, :total, :paid, :payable, :total, :date_of_issue, :payable_date
  json.url debt_url(debt, format: :json)
end
