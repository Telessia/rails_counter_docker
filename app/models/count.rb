class Count
  include Mongoid::Document
  include Mongoid::Timestamps

  field :_id, type: String, default: "counterZero"
  field :value, type: Integer, default: 0

  def value()
    return self[:value]
  end
end
