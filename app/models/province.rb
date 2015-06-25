class Province
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  has_many :cities

  def as_json(opt={})
    {
      id:     id,
      name:   name
    }
  end

end
