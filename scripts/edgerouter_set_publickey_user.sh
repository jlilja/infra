# Setting up a user for public key authentication.
# Should be an ansible role in the future.
# Inspiration taken from:
#   - https://gist.github.com/purp/05c4a82cc9372667d573172b4a4b1198
#   - https://docs.vyos.io/en/latest/configuration/system/login.html
#   - https://thehomeofthefuture.com/how-to/use-an-ssh-key-with-an-ubiquiti-edgerouter/

set system login user ansible authentication public-keys ansible type ssh-ed25519
set system login user ansible authentication public-keys ansible key [PUBLIC_KEY]
set system login user ansible authentication plaintext-password [REDACTED]
set service ssh disable-password-authentication

show service ssh # For sanity checking
