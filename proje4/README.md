# Proje 4 — Kullanıcı Kayıt Formu

Flutter form alanları ve doğrulama kurallarını gösteren bir kullanıcı kayıt ekranı. Form; ad-soyad, yaş, e-posta, şifre, cinsiyet ve gizlilik sözleşmesi alanlarını içerir.

## Doğrulama kuralları

- Ad-soyad, yaş, e-posta ve şifre boş bırakılamaz.
- Yaş en az 18 olmalıdır.
- E-posta biçimi `email_validator` paketiyle kontrol edilir.
- Şifre en az 8 karakter olmalıdır.
- Kaydetme için cinsiyet seçimi ve sözleşme onayı da gerekir.
- Sıfırla düğmesi alanları ve seçimleri temizler.

Başarılı gönderimde girilen bilgiler uygulama içinde bir SnackBar ile gösterilir; bu örnek verileri bir sunucuya göndermez veya kalıcı olarak kaydetmez.

## Çalıştırma

```bash
flutter pub get
flutter run
```

Bu proje eğitim amaçlı bir form ve doğrulama örneğidir.