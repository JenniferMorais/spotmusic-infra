FROM cirrusci/flutter:stable
WORKDIR /app
COPY . .
RUN flutter pub get
RUN flutter build apk --release
CMD ["flutter", "run"]