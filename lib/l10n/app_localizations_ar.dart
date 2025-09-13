// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get uploadFingerprintImage => 'ارفع صورة البصمة';

  @override
  String get browse => 'تصفح';

  @override
  String get selectFromGallery => 'اختر من المعرض';

  @override
  String get appName => 'BioVerify';

  @override
  String get cancel => 'إلغاء';

  @override
  String get changeLanguage => 'تغيير اللغة';

  @override
  String get crop => 'قص الصورة';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get defaultErrorMessage => 'حدث خطأ ما, يرجى المحاولة مرة أخرى';

  @override
  String get fieldRequired => 'هذا الحقل مطلوب';

  @override
  String get invalidFieldValue => 'قيمة حقل غير صالحة';

  @override
  String get lightMode => 'الوضع الصباحي';

  @override
  String get locationPermissionIsRequiredToContinue =>
      'يجب السماح بالوصول إلى الموقع للمتابعة';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get loginSuccess => 'تم تسجيل الدخول بنجاح';

  @override
  String get noItemsFoundError => 'لا يوجد عناصر';

  @override
  String get password => 'كلمة المرور';

  @override
  String get pickDate => 'اختر التاريخ';

  @override
  String get relocate => 'إعادة تحديد الموقع';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get search => 'بحث';

  @override
  String get select => 'اختر';

  @override
  String get switchTheme => 'تغيير اللون';

  @override
  String get theme => 'المظهر';

  @override
  String get themeDark => 'داكن';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeSystem => 'النظام';

  @override
  String get typeYourPasswordHere => 'أدخل كلمة المرور هنا';

  @override
  String get typeYourUsenameHere => 'ادخل اسم المستخدم هنا';

  @override
  String get username => 'اسم المستخدم';

  @override
  String get validationEmail => 'الرجاء إدخال بريد إلكتروني صالح';

  @override
  String get validationMaxLength => 'الرجاء إكمال الطول المطلوب';

  @override
  String get validationPhoneNumber => 'الرجاء إدخال رقم هاتف صالح';

  @override
  String get validationRequired => 'هذا الحقل مطلوب';

  @override
  String get validationUrl => 'الرجاء إدخال عنوان URL صالح';

  @override
  String get validatorEmail => 'البريد الإلكتروني غير صحيح';

  @override
  String validatorMaxLength(Object n) {
    return 'رجاءً أدخل $n أحرف على الأكثر';
  }

  @override
  String validatorMinLength(Object n) {
    return 'رجاءً أدخل $n أحرف على الأقل';
  }

  @override
  String get validatorPhoneNumber => 'رقم الهاتف غير صحيح';

  @override
  String get validatorRequired => 'هذا الحقل مطلوب';

  @override
  String get validatorUrl => 'الرابط غير صحيح';

  @override
  String get validatorUseArabicOrKurdishLetters =>
      'رجاءً أدخل حروف عربية أو كردية';

  @override
  String get validatorUseEnglishLetters => 'رجاءً أدخل حروف إنجليزية';

  @override
  String get welcomeAgain => 'مرحباً بك مرة أخرى';

  @override
  String get or => 'أو';

  @override
  String get connectToWirelessScanner => 'اتصل بجهاز الماسح الضوئي اللاسلكي';

  @override
  String get ifi => 'ادب';

  @override
  String get theInternationalFingerprintRecognization =>
      'التعرف الدولي على البصمات';

  @override
  String get connect => 'اتصل';

  @override
  String get upload => 'رفع';

  @override
  String get fingerprintWasUploadedSuccessfully => 'تم رفع بصمة الإصبع بنجاح';

  @override
  String get selectAnImageOfAFingerprint => 'يرجى اختيار صورة لبصمة الإصبع';

  @override
  String get uploadFingerprint => 'رفع بصمة الإصبع';

  @override
  String get matchFingerprint => 'مطابقة بصمة الإصبع';

  @override
  String get role => 'الدور';

  @override
  String get gym => 'الألعاب الرياضية';

  @override
  String get bank => 'بنك';

  @override
  String get verificationSuccessful => 'تم التحقق بنجاح';

  @override
  String get verificationFailed => 'فشل التحقق';

  @override
  String get matchedId => 'المعرف المطابق';

  @override
  String get confidenceScore => 'درجة الثقة';

  @override
  String get verificationTime => 'وقت التحقق';

  @override
  String get complete => 'إكمال';

  @override
  String get notAvailable => 'غير متوفر';

  @override
  String get recognitionFailed => 'فشل التعرف';

  @override
  String get unrecognizedPersonal => 'شخص غير معترف به';

  @override
  String get authorizationMessage =>
      'يُسمح للأشخاص المخولين فقط بتقديم بصمات الأصابع تأكد من أنك مالك الجهاز';
}
