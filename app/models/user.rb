class User < ActiveRecord::Base
  before_validation :adjust_email, on: :create
  validates_presence_of :name, length: {minimum: 1, maximum: 60}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook, :twitter, :google_oauth2]  
  has_many :tags
  has_many :menus
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end

  def self.find_for_facebook_oauth(auth, signed_in_resource = nil)
    data = auth.info
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
    if registered_user
      return registered_user
    else
      auth.provider = 'Facebook'
      user = User.create!(
        provider:auth.provider,
        uid:auth.uid,
        name: data["name"],
        email:auth.info.mail,
        password:Devise.friendly_token[0,10],
        )
    end
    end
  end
  
  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else

        user = User.create(name:auth.extra.raw_info.name,
                            provider:auth.provider,
                            uid:auth.uid,
                            email:auth.info.email,
                            password:Devise.friendly_token[0,10],
                          )
      end

    end
  end
  
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        access_token.provider = 'Google'
        user = User.create(name: data["name"],
          provider:access_token.provider,
          email: data["email"],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,10],
        )
      end
    end
  end

  def notifications
    return Activity.where("(user_id = ? AND activity_type = 1) OR (ask_user_id = ? AND activity_type = 2)", self.id, self.id)
  end
  
  private

    def adjust_email
      self.email = "fake+#{generate_token}" if email.blank?
      true
    end

    def generate_token
      rand(36**8).to_s(36)
    end
end
