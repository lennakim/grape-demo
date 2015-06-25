class City
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :pinyin

  belongs_to :province

  def as_json(opt={})
    {
      id:     id,
      name:   name
    }
  end

end
