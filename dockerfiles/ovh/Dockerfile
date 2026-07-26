FROM caddy:builder@sha256:198d47eaee306d4d0c38a9960c89ff2c959aa29ad51d3e2dafa3e93ac961782a AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/ovh

FROM caddy:2.11.4@sha256:98eb57d882ccd5213d1688764db10c1ca2c58a1ca3a6717a3411ad798f7a423a

COPY --from=builder /usr/bin/caddy /usr/bin/caddy