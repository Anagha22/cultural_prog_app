json.array!(@artsfest_details) do |artsfest_detail|
  json.extract! artsfest_detail, :id, :name_, :house_, :roll_no_, :prize_
  json.url artsfest_detail_url(artsfest_detail, format: :json)
end
