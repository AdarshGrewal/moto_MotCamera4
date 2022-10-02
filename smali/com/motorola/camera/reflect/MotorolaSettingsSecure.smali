.class public final Lcom/motorola/camera/reflect/MotorolaSettingsSecure;
.super Ljava/lang/Object;
.source "MotorolaSettingsSecure.kt"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/reflect/MotorolaSettingsSecure;

.field public static final methodGetInt:Ljava/lang/reflect/Method;

.field public static final methodPutInt:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "MotorolaSettingsSecure"

    const-class v1, Ljava/lang/String;

    const-string v2, "com.motorola.android.provider.MotorolaSettings$Secure"

    new-instance v3, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;

    invoke-direct {v3}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;-><init>()V

    sput-object v3, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->INSTANCE:Lcom/motorola/camera/reflect/MotorolaSettingsSecure;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 1
    :try_start_0
    invoke-static {v2}, Lcom/google/photos/vision/barhopper/zza;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v9, "getInt"

    new-array v10, v6, [Ljava/lang/Class;

    .line 2
    const-class v11, Landroid/content/ContentResolver;

    aput-object v11, v10, v5

    aput-object v1, v10, v4

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    .line 3
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v9, "Failed to get method getInt on class com.motorola.android.provider.MotorolaSettings$Secure"

    .line 4
    invoke-static {v0, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v8, v7

    .line 5
    :goto_1
    sput-object v8, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->methodGetInt:Ljava/lang/reflect/Method;

    .line 6
    :try_start_1
    invoke-static {v2}, Lcom/google/photos/vision/barhopper/zza;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "putInt"

    new-array v6, v6, [Ljava/lang/Class;

    .line 7
    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v6, v5

    aput-object v1, v6, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v3

    .line 8
    invoke-virtual {v2, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "Failed to get method putInt on class com.motorola.android.provider.MotorolaSettings$Secure"

    .line 9
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_2
    sput-object v7, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->methodPutInt:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->methodGetInt:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 2
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v3, v4

    aput-object p1, v3, v0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 4
    instance-of p1, p0, Ljava/lang/IllegalAccessException;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    :goto_2
    if-eqz v0, :cond_3

    const-string p1, "Failed to invoke method "

    const-string v0, "getInt"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotorolaSettingsSecure"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return p2

    .line 6
    :cond_3
    throw p0
.end method

.method public static final putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    sget-object v2, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->methodPutInt:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v4, v0

    aput-object p1, v4, v1

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 4
    instance-of p1, p0, Ljava/lang/IllegalAccessException;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    :goto_2
    if-eqz v1, :cond_3

    const-string p1, "Failed to invoke method "

    const-string p2, "putInt"

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotorolaSettingsSecure"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return v0

    .line 6
    :cond_3
    throw p0
.end method
