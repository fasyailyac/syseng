# Menggunakan image resmi Node.js sebagai base image
FROM node:14

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menginstall dependensi aplikasi
RUN npm install

# Menyalin seluruh konten aplikasi ke dalam container
COPY . .

# Menentukan port yang akan diexpose
EXPOSE 3000

# Perintah yang akan dijalankan saat container dijalankan
CMD ["npm", "start"]
