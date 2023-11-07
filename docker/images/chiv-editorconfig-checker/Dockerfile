FROM ghcr.io/chiv-in/devinf/devinf2:npm-02 as builder
COPY . /app
WORKDIR /app
RUN \
	chmod a+x check.sh && \
	echo "node@$(node --version)" && \
	echo "npm@$(npm --version)" && \
	npm ci

FROM ghcr.io/chiv-in/devinf/devinf2:nodejs-02
USER $APP_USER
WORKDIR /app
COPY --from=builder --chown="$APP_USER" /app /app
ENV \
	PROJECT_PATH=/project \
	IGNORE='\.iml$|/(node_modules|\.next|target|\.idea|\.git|mongo-dev-stuff/db)/'

CMD ["/app/check.sh"]
