class Item < ApplicationRecord
validates :title,
presence: true,
uniqueness: { case_sensitive: false } #Penser à vérifier que cette fonctionnalité fonctionne, elle sert à éviter que l'on puisse enregistrer deux fois le même titre, ainsi chaque produit aura son propre titre
length: { in: 3..20 }

validates :description,
presence: true,
length: { in: 5..300 }

validates :price,
presence: true,
numericality: { only_integer: true,greater_than_or_equal_to: 1 }

end
