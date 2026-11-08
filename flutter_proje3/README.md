# Proje 3 — Hava Durumu

OpenWeatherMap API'sinden şehir hava durumunu alan Flutter uygulaması. Kullanıcı şehirler ızgaresinden seçim yapar; ekranda şehir adı, sıcaklık, hava durumu açıklaması, nem ve rüzgâr bilgisi gösterilir.

## Teknik ayrıntılar

- HTTP istekleri için Dio kullanılır.
- API yanıtı `WeatherModel` sınıfına dönüştürülür.
- İsteklerde Türkçe açıklama (`lang=tr`) ve Celsius birimi (`units=metric`) kullanılır.
- API anahtarı `.env` dosyasından `WEATHER_API_KEY` adıyla okunur.
- Şehir listesi Türkiye'deki illeri içerir.

## Kurulum

1. Bu klasörde `.env.example` dosyasını `.env` adıyla kopyalayın.
2. OpenWeatherMap API anahtarınızı `.env` dosyasına girin:

```env
WEATHER_API_KEY=buraya_kendi_api_anahtariniz
```

3. Bağımlılıkları yükleyip uygulamayı çalıştırın:

```bash
flutter pub get
flutter run
```

API anahtarınızı herkese açık depoya eklemeyin. Hava verisinin gelmesi için internet bağlantısı ve geçerli bir API anahtarı gerekir.