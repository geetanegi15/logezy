class MerchantDashboardSerializer < ActiveModel::Serializer
    attribute :Total_client do |object|
        Client.all.count
    end
    attribute :Active_client do |object|
        Client.where(activated: true).count
    end
    attribute :Passive_client do |object|
        Client.where(activated: false).count
    end
    attribute :Total_business_unit do |object|
        BusinessUnit.all.count
    end
    attribute :Active_business_unit do |object|
        BusinessUnit.where(activated: false).count
    end
    attribute :Inactive_business_unit do |object|
        BusinessUnit.where(activated: false).count
    end
    attribute :vacancies do |object|
        Vacancy.all.pluck(:jobs_id)
    end


  end