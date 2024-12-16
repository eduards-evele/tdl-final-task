# Use a lightweight base image
FROM alpine:latest

# Install curl
RUN apk add --no-cache curl

# Set environment variable for the URL (default value provided)
ENV URL="http://node-mock-app-prd:3000/messages/123"

# Command to send the curl request to the specified URL
CMD ["sh"]
