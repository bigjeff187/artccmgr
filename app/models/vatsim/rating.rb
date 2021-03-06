# frozen_string_literal: true

class Vatsim::Rating < ApplicationRecord
  # Audit configuration
  audited

  # ActiveRecord associations
  # has_many :users, dependent: :destroy

  # ActiveRecord validations
  validates :name,
            presence:     true,
            allow_blank:  false,
            uniqueness:   { case_sensitive: false }

  validates :short_name,
            presence:     true,
            allow_blank:  false,
            length:       { maximum: 3 },
            uniqueness:   { case_sensitive: false }
end
