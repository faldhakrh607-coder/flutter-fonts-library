# مكتبة خطوط فلاتر — Flutter Fonts Library

مكتبة خطوط عربية وإنجليزية جاهزة للاستخدام في تطبيقات Flutter،
كل خط بأكثر من تشكيلة (أوزان متعددة: خفيف، عادي، متوسط، عريض...).

**المحتوى: 10 عائلات خطوط — 97 ملف خط (TTF).**

## الخطوط المتوفرة

| الخط | اللغة | التشكيلات | عدد الملفات |
|---|---|---|---|
| Almarai | عربي | Bold, ExtraBold, Light, Regular | 4 |
| Amiri | عربي | Bold, BoldItalic, Italic, Regular | 4 |
| Cairo | عربي | Black, Bold, ExtraBold, Light, Medium, Regular, SemiBold, Variable (كل الأوزان) | 8 |
| IBM Plex Sans Arabic | عربي | Bold, ExtraLight, Light, Medium, Regular, SemiBold, Thin | 7 |
| Tajawal | عربي | Black, Bold, ExtraBold, ExtraLight, Light, Medium, Regular | 7 |
| Lato | إنجليزي | Black, BlackItalic, Bold, BoldItalic, ExtraBold, ExtraBoldItalic, ExtraLight, ExtraLightItalic, Italic, Light, LightItalic, Medium, MediumItalic, Regular, SemiBold, SemiBoldItalic, Thin, ThinItalic | 18 |
| Montserrat | إنجليزي | Black, Bold, BoldItalic, ExtraBold, Variable (كل الأوزان), Light, Medium, Regular, RegularItalic, SemiBold, Variable (كل الأوزان) | 11 |
| Open Sans | إنجليزي | Bold, BoldItalic, ExtraBold, Variable (كل الأوزان), Light, Medium, Regular, RegularItalic, SemiBold, Variable (كل الأوزان) | 10 |
| Poppins | إنجليزي | Black, BlackItalic, Bold, BoldItalic, ExtraBold, ExtraBoldItalic, ExtraLight, ExtraLightItalic, Italic, Light, LightItalic, Medium, MediumItalic, Regular, SemiBold, SemiBoldItalic, Thin, ThinItalic | 18 |
| Roboto | إنجليزي | Black, Bold, BoldItalic, Variable (كل الأوزان), Light, Medium, Regular, RegularItalic, Thin, Variable (كل الأوزان) | 10 |

## بنية المكتبة

```
flutter-fonts-library/
├── README.md
├── LICENSE                 # رخصة SIL Open Font License 1.1
├── fonts/
│   ├── Almarai/            # Almarai (4 ملف)
│   ├── Amiri/            # Amiri (4 ملف)
│   ├── Cairo/            # Cairo (8 ملف)
│   ├── IBM-Plex-Sans-Arabic/            # IBM Plex Sans Arabic (7 ملف)
│   ├── Lato/            # Lato (18 ملف)
│   ├── Montserrat/            # Montserrat (11 ملف)
│   ├── Open-Sans/            # Open Sans (10 ملف)
│   ├── Poppins/            # Poppins (18 ملف)
│   ├── Roboto/            # Roboto (10 ملف)
│   ├── Tajawal/            # Tajawal (7 ملف)
└── example/
    ├── pubspec_snippet.yaml  # مثال لإضافة الخطوط في pubspec.yaml
    └── usage_example.dart    # مثال كود Dart لاستخدام الخطوط
```

## كيف تستخدم الخطوط في Flutter

### 1. انسخ مجلد الخط الذي تريده إلى مشروعك

مثال: انسخ `fonts/Cairo/` إلى `assets/fonts/Cairo/` داخل مشروع Flutter.

### 2. أضف الخطوط في `pubspec.yaml`

```yaml
flutter:
  fonts:
    - family: Cairo
      fonts:
        - asset: assets/fonts/Cairo/Cairo-Light.ttf
          weight: 300
        - asset: assets/fonts/Cairo/Cairo-Regular.ttf
          weight: 400
        - asset: assets/fonts/Cairo/Cairo-Medium.ttf
          weight: 500
        - asset: assets/fonts/Cairo/Cairo-SemiBold.ttf
          weight: 600
        - asset: assets/fonts/Cairo/Cairo-Bold.ttf
          weight: 700
        - asset: assets/fonts/Cairo/Cairo-ExtraBold.ttf
          weight: 800
        - asset: assets/fonts/Cairo/Cairo-Black.ttf
          weight: 900
```

> ملاحظة: اسم العائلة في `family:` هو الاسم الأساسي (Cairo)، والوزن `weight:`
> يفرّق بين التشكيلات. مثال كامل في `example/pubspec_snippet.yaml`.

### 3. استخدم الخط في الكود

```dart
Text(
  'مرحباً بك في فلاتر',
  style: TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold),
)

// أو خط افتراضي لكل التطبيق:
MaterialApp(
  theme: ThemeData(fontFamily: 'Cairo'),
  home: MyHomePage(),
)
```

مثال كامل في `example/usage_example.dart`.

## الخطوط المتغيرة (Variable Fonts)

أربع عائلات تتضمن ملف الخط المتغير الأصلي (كل الأوزان في ملف واحد):
Cairo و Montserrat و Open Sans و Roboto.
التشكيلات الثابتة المولّدة منها موجودة بجانبها في نفس المجلد،
فاستخدم التشكيلات الثابتة للطريقة العادية، والملف المتغير إن أردت كل الأوزان بملف واحد.

## الرخصة

جميع الخطوط مرخّصة برخصة **SIL Open Font License 1.1**
(استخدام مجاني في المشاريع الشخصية والتجارية)،
ونص الرخصة موجود في كل مجلد خط (`OFL.txt`) وفي ملف `LICENSE`.
المصدر: [google/fonts](https://github.com/google/fonts).

---

## English

A ready-to-use Arabic + English font library for Flutter apps.
10 font families, 97 TTF files, each family in several weights/styles.

**Usage:** copy a font folder into your Flutter project under `assets/fonts/`,
declare it in `pubspec.yaml` with `family` + `weight` per file
(see `example/pubspec_snippet.yaml`), then use it with
`TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold)`
or as the app-wide default via `ThemeData(fontFamily: 'Cairo')`.

All fonts are licensed under the **SIL Open Font License 1.1**
(free for personal and commercial use). Source: google/fonts.
