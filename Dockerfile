# Use Node 18 (or 20 if needed)
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy rest of the code
COPY . .

# Optional: build scripts (e.g., to convert/build icons/manifest zips)
# Uncomment below if needed
# RUN yarn run build

# If it's a CLI tool:
# ENTRYPOINT [ "node", "bin/your-script.js" ]

# If you're running a dev server (e.g., `src/index.js` or `server.js`):
# CMD [ "node", "src/index.js" ]

# For Coolify — expose a port only if the app serves HTTP
# EXPOSE 3000
