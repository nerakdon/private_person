module PrivatePerson
  module Permissor
    def acts_as_permissor(params = {})
      if params[:of].nil?
        raise 'Called acts_as_permissor, but without an :of parameter.'
      end
      class_attribute :of
      self.of = params[:of]
      class_name = params[:class_name] || params[:of].to_s.classify
      class_name.constantize.acts_as_permitted
      class_eval do
        has_many :permissions_as_permissor, :as => :permissor, :class_name => 'Permission'
        has_many :permissibles, :through => :permissions, :as => :permissor

        def permit!(whom, what)
          existing = self.permissions_as_permissor.by_relationship_type(whom).by_permissible(what)

          if existing.empty?
            self.permissions_as_permissor.create!(permission_params(whom, what))
          end
          self.permissions_as_permissor.reload
        end

        def wildcard_permit!(whom, what)
          existing = self.permissions_as_permissor.by_relationship_type(whom).where(:permissible_type, what)

          if existing.empty?
            self.permissions_as_permissor.create!(wildcard_permission_params(whom, what))
          end
          self.permissions_as_permissor.reload
        end

        def permission_params(whom, what)
          params = ActionController::Parameters.new({:relationship_type => whom, :permissible => what})
          params.permit!
        end

        def wildcard_permission_params(whom, what)
          params = ActionController::Parameters.new({:relationship_type => whom, :permissible_type => what})
          params.permit!
        end
      end
    end
  end
end