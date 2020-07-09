-dontshrink
-dontoptimize
-dontnote
-dontusemixedcaseclassnames
#-useuniqueclassmembernames
-dontwarn

#-libraryjars <java.home>/lib/rt.jar(!com/sun/xml/internal/**,!sun/**,!jdk/**,!com/sun/activation/**,!com/sun/management/**,!com/sun/activation/**,!com/sun/jndi/**,!com/sun/rmi/**,!com/sun/script/**,!javax/management/**,!sun/rmi/**!sun/net/**,!com/sun/corba/**,!com/sun/demo/**,!com/sun/jmx/**,!com/sun/demo/**,!javax/swing/**,!com/sun/org/apache/**,!com/sun/org/glassfish/**,!com/sun/script/**,!com/sun/org/omg/**,!sun/applet/**,!sun/usagetracker/**,!sun/corba/**,!sun/org/mozilla/**)
# Java 9+ variant:
-libraryjars <java.home>/jmods/java.base.jmod(!**.jar;!module-info.class)

-keepattributes !LocalVariableTypeTable,!LocalVariableTable,LineNumberTable,SourceFile,!SourceDir,!Synthetic,javax.xml.bind.annotation.*,**




-keep class !**.internal** { *; }
-keep class !**.internal.** { *; }
-keep interface !**.internal** { *; }
-keep interface !**.internal.** { *; }

-keepclassmembers class * { @ext.com.google.inject.Inject <init>(...); }


 # keeps all fields and Constructors with @Inject
-keepclasseswithmembers,allowoptimization,allowobfuscation class * {
    @com.google.inject.Inject <fields>;
    @com.google.inject.Inject <init>(...);
    @com.google.inject.Inject <methods>;
}

-keepclassmembers,allowobfuscation,allowoptimization class * {     @com.google.inject.Provides <methods>; }


-renamesourcefileattribute SourceFile

