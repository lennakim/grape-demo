module V2
  module Entity
    class City < BaseEntity
      expose :name
      expose :pinyin, format_with: :null
    end
  end
end