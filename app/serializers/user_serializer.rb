class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :first_name, :last_name, :jobs_as_client

  def jobs_as_client
    object.jobs_as_client.map do |jc|
        {id: jc.id, description: jc.description, start_time: jc.start_time, freelancer_id: jc.freelancer_id, hours: jc.hours, dayrate_or_hourly: jc.dayrate_or_hourly, lat: jc.lat, long: jc.long, location: jc.location, rate: jc.rate, total_amount: jc.total_amount, completed: jc.completed}
    end
  end

end

# j1 = Job.create(description: "Help with garden", start_time: "Tue Oct 27 2020 10:25:50 GMT-0400 (Eastern Daylight Time)", client_id: blade.id, freelancer_id: val.id, hours: 10, dayrate_or_hourly: "dayrate", lat: 42.4538168, long: -71.2337149, location: "74 Bedford St, Lexington, MA 02420", rate: 600, total_amount: 600, completed: true)

