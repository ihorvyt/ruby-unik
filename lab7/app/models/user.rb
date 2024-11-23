class User < ApplicationRecord
    # Валідації
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    # Асоціації
    has_many :posts, dependent: :destroy
    
    # Підключення модулів Devise
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    # Ролі користувачів
    enum role: { user: 0, admin: 1 }
  
    # Метод для перевірки ролі адміністратора
    def admin?
      role == 'admin'
    end
  end
  