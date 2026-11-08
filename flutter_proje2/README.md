# Proje 2 — Kişiler Listesi

Flutter ile oluşturulmuş, JSON biçimindeki yerel örnek veriyi kartlı bir kişi listesinde gösteren mini uygulama. Ekranda “Kişiler” başlığı, kişi kartları, ekleme düğmesi ve alt gezinme çubuğu bulunur.

## Özellikler

- `assets/data/persons.json` içindeki `persons` listesini uygulama varlıklarından okur.
- Kişileri ad-soyad ve kimlik numarası görünümüyle listeler.
- Artı düğmesiyle geçerli oturumda örnek bir kişi ekler.
- Ana Sayfa, Durum ve Geçmiş Aramalar başlıklı alt gezinme öğelerini gösterir.
- Menüde Yeni Grup, Yıldızlı Mesajlar ve Ayarlar seçenekleri bulunur.

Kişi ekleme uygulama belleğinde yapılır; uygulama yeniden başlatıldığında JSON dosyasına yazılmaz. Menü ve alt gezinme öğeleri arayüz örneği olarak sunulmuştur.

## Çalıştırma

Proje klasöründe:

```bash
flutter pub get
flutter run
```

Örnek kişi verileri `assets/data/persons.json` dosyasındadır. Varlık yolu `pubspec.yaml` içinde tanımlanmıştır.