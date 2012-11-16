class Ticket
  include Mongoid::Document
  include ActiveModel::ForbiddenAttributesProtection
  field :number, type: Integer
  field :name, type: String

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_uniqueness_of :number

  def save(args={})
    self.number = (Ticket.max(:number) || 0)

    super(args)
  rescue
    #TODO: This doesn't work
    self.number += 1
    retry
  end
end