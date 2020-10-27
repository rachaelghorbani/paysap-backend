class JobSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :hours, :dayrate_or_hourly, :lat, :long, :location, :rate, :total_amount, :completed
  has_one :client
  has_one :freelancer
end
