class Project < ApplicationRecord
    validates :name, :description, :status, presence: true
    validates :status, inclusion: ['Propuesta', 'En Progreso', 'Terminado']

    def self.for_index(status)
        if status.blank?
            @projects=Project.all
        else
            @projects=Project.where(status: status)
        end

        
    end
end
