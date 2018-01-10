require 'jwt'

class Auth
    def self.create_token(user_object)
        payload = {user: JSON.parse(user_object.to_json)}
        token = JWT.encode(payload, 'myapp', 'HS256')
        decode_token(token)
    end

    def self.decode_token(token)
       decoded = JWT.decode(token, 'myapp', true,{algorithm: 'HS256'})
    end

end