class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :first_name, :last_name, :account, :documents, :jobs_as_client, :jobs_as_freelancer, :expenses


  def documents
    object.documents.map do |d|
        {id:d.id, description: d.description, pdf_url: d.pdf_url, preview_url: d.preview_url}
    end 
  end
def account
    {id: object.account.id, account_number: object.account.account_number, amount: object.account.amount, }
end

def jobs_as_freelancer
    object.jobs_as_freelancer.map do |jf|

        job = Job.find(jf.id)
        client = job.client
        
        {id: jf.id, description: jf.description, start_time: jf.start_time, freelancer_id: jf.freelancer_id, hours: jf.hours, dayrate_or_hourly: jf.dayrate_or_hourly, lat: jf.lat, long: jf.long, location: jf.location, rate: jf.rate, total_amount: jf.total_amount, completed: jf.completed, client_email: client.email, client_id: client.id, client_bank_account_id: client.account.id, client_balance: client.account.amount}
    end
end

  def jobs_as_client
    object.jobs_as_client.map do |jc|

        job = Job.find(jc.id)
        freelancer = job.freelancer

        {id: jc.id, description: jc.description, start_time: jc.start_time, freelancer_id: jc.freelancer_id, hours: jc.hours, dayrate_or_hourly: jc.dayrate_or_hourly, lat: jc.lat, long: jc.long, location: jc.location, rate: jc.rate, total_amount: jc.total_amount, completed: jc.completed, freelancer_email: freelancer.email, freelancer_id: freelancer.id, freelancer_bank_account_id: freelancer.account.id, freelancer_balance: freelancer.account.amount}
    end
  end

 

  

end

# j1 = Job.create(description: "Help with garden", start_time: "Tue Oct 27 2020 10:25:50 GMT-0400 (Eastern Daylight Time)", client_id: blade.id, freelancer_id: val.id, hours: 10, dayrate_or_hourly: "dayrate", lat: 42.4538168, long: -71.2337149, location: "74 Bedford St, Lexington, MA 02420", rate: 600, total_amount: 600, completed: true)

