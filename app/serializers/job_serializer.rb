class JobSerializer < ActiveModel::Serializer
  attributes :id, :description, :start_time, :hours, :dayrate_or_hourly, :lat, :long, :location, :rate, :total_amount, :completed, :client, :freelancer

  def client 
    {id: object.client_id, username: object.client.username, email: object.client.email, first_name: object.client.first_name, last_name: object.client.last_name }
  end

  def freelancer 
    {id: object.freelancer_id, username: object.freelancer.username, email: object.freelancer.email, first_name: object.freelancer.first_name, last_name: object.freelancer.last_name }
  end
  
end
