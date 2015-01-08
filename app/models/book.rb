class Book < ActiveFedora::Base
  include Hydra::AccessControls::Permissions

  has_metadata 'descMetadata', type: BookMetadata

  has_many :pages, :property => :is_part_of

  has_attributes :author, datastream: 'descMetadata', multiple: true
  has_attributes :title, datastream: 'descMetadata', multiple: true

  # delegate :title, to: 'descMetadata'
  # delegate :author, to: 'descMetadata'

end