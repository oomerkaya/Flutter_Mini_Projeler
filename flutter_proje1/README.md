# Proje 1 — Kişisel Profil Ekranı

Flutter Material bileşenleriyle hazırlanmış, kişisel bilgileri tek ekranda sunan basit bir profil sayfası örneği.

## Ekranda neler var?

- Ağ üzerinden yüklenen profil görseli
- Okul, fakülte ve bölüm bilgilerinin gösterildiği kart
- Uygulamanın amacını anlatan bilgi kartı
- Web sitesi ve iletişim başlıklı iki örnek buton

Butonlar bu sürümde yalnızca hata ayıklama konsoluna mesaj yazar; web sayfası açmaz veya iletişim başlatmaz.

## Kullanılan Flutter bileşenleri

`MaterialApp`, `Scaffold`, `AppBar`, `CircleAvatar`, `Card`, `Divider`, `Row`, `Column` ve yeniden kullanılan yardımcı widget metotları.

## Çalıştırma

```bash
flutter pub get
flutter run
```

Profil görseli harici bir URL'den yüklendiği için görselin görüntülenmesi ağ bağlantısına bağlıdır.