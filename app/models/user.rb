class User < ApplicationRecord
    has_secure_password

    has_many :jobs_as_client, class_name: 'Job', foreign_key: :client_id
    has_many :freelancers, through: :jobs_as_client, source: :freelancer


    has_many :jobs_as_freelancer, class_name: 'Job', foreign_key: :freelancer_id
    has_many :clients, through: :jobs_as_freelancer, source: :client

    has_one :account

    has_many :documents

    has_many :expenses

    validates :username, uniqueness: { case_sensitive: false }
end
