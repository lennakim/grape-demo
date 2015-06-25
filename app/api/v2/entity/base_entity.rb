module V2
  class BaseEntity < Grape::Entity
    format_with(:null) { |v| v.blank? ? "" : v }
    format_with(:iso_timestamp) { |dt| dt.iso8601 if dt }
  end
end