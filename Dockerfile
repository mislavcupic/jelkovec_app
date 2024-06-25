# Use a Flutter Docker image with a specific version
FROM cirrusci/flutter:2.10.1

# Set working directory inside the container
WORKDIR /app

# Copy pubspec.yaml and run flutter pub get
COPY pubspec.* ./
RUN flutter pub get

# Copy the entire project
COPY . .

# Build the Flutter app for release
RUN flutter build apk --release

# Example CMD to start your Flutter app (adjust as per your app's entry point)
CMD ["flutter", "run", "--release"]
