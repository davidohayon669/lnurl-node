

DEBUG=lnurl* node cli.js server --host "$LNURL_HOST" \
	--port "$LNURL_PORT" \
    --url "$LNURL_URL" \
	--lightning.backend "lnd" \
    --lightning.config "{\"hostname\":\"$LND_HOST:$LND_PORT\",\"macaroon\":{\"data\":\"$LND_MACAROON\"},\"cert\":\"$LND_CERT_PATH\"}" \
    --store.backend "knex" \
    --store.config "{\"client\":\"postgres\",\"connection\":{\"host\":\"$POSTGRES_HOST\",\"user\":\"$POSTGRES_USER\",\"password\":\"$POSTGRES_PASSWORD\",\"database\":\"$POSTGRES_DB\"}}"

