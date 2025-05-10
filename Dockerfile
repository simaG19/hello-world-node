# Step 1: Base image - like choosing an operating system
FROM node:18-alpine

# Step 2: Set working directory (like 'cd' into this folder)
WORKDIR /app

# Step 3: Copy package files first (this helps cache dependencies)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy all source code
COPY . .

# Step 6: Expose port 3000 (like opening a door for traffic)
EXPOSE 3000

# Step 7: Command to run when container starts
CMD ["npm", "start"]