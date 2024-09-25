#---------------------------------基本指令区---------------------------------
-optimizationpasses 5
-flattenpackagehierarchy
-allowaccessmodification
-keepattributes Signature,Exceptions,*Annotation*,InnerClasses,EnclosingMethod,SourceFile,LineNumberTable
-renamesourcefileattribute 'SourceFile'
-obfuscationdictionary 'dictionary.txt'
-classobfuscationdictionary 'dictionary.txt'
-packageobfuscationdictionary 'dictionary.txt'
-dontusemixedcaseclassnames

#---------------------------------默认保留区---------------------------------
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.view.View

#---------------------------------Kotlin 保留区---------------------------------
-keep,allowobfuscation,allowshrinking class kotlin.coroutines.Continuation

#---------------------------------其他保留区---------------------------------
-keep class com.hjq.permissions.** {*;}
-keepclassmembers class androidx.compose.ui.graphics.AndroidImageBitmap_androidKt{
    public *** asImageBitmap(...);
}
-keepclassmembers class androidx.compose.ui.platform.AndroidCompositionLocals_androidKt{
    public *** getLocalContext(...);
}
-keepclassmembers class androidx.compose.foundation.OverscrollConfigurationKt{
    public *** getLocalOverscrollConfiguration(...);
}

#---------------------------------序列化指令区---------------------------------
-keep,includedescriptorclasses class cn.xihan.qdds.**$$serializer { *; }
-keepclassmembers class cn.xihan.qdds.** {
    *** Companion;
}
