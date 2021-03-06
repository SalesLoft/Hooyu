class Organization
  include Neo4j::ActiveNode

  property :updated_at
  property :created_at
  property :name, type: String
  property :domain, type: String
  property :available_departments

  has_many :in, :people, unique: true

  def departments
    available_departments.map(&:titleize)
  end
end
