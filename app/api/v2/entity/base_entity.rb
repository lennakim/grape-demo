module V2
  module Entity
    class BaseEntity < Grape::Entity
      format_with(:null) { |v| v.blank? ? "" : v }
      format_with(:decimal) {|d| d.to_s('F') if d }
      format_with(:iso_timestamp) { |dt| dt.iso8601 if dt }
    end
  end
end