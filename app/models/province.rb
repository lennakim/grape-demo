class Province
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :short_name #简称: 冀 赣

  has_many :cities

  def as_json(opt={})
    {
      id:     id,
      name:   name
    }
  end

end
