.class public final Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;
.super Ljava/lang/Object;
.source "MotorolaSettingsGlobal.kt"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;

.field public static final LID_STATE:Ljava/lang/String;

.field public static final methodGetInt:Ljava/lang/reflect/Method;

.field public static final methodGetUriFor:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "MotorolaSettingsGlobal"

    const-class v1, Ljava/lang/String;

    const-string v2, "com.motorola.android.provider.MotorolaSettings$Global"

    new-instance v3, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;

    invoke-direct {v3}, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;-><init>()V

    sput-object v3, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;->INSTANCE:Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    :try_start_0
    invoke-static {v2}, Lcom/google/photos/vision/barhopper/zza;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "getInt"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    .line 2
    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v8, v4

    aput-object v1, v8, v3

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 3
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "Failed to get method getInt on class com.motorola.android.provider.MotorolaSettings$Global"

    .line 4
    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v6, v5

    .line 5
    :goto_1
    sput-object v6, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;->methodGetInt:Ljava/lang/reflect/Method;

    .line 6
    :try_start_1
    invoke-static {v2}, Lcom/google/photos/vision/barhopper/zza;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v7, "getUriFor"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v1, v3, v4

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v3, "Failed to get method getUriFor on class com.motorola.android.provider.MotorolaSettings$Global"

    .line 7
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_2
    sput-object v5, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;->methodGetUriFor:Ljava/lang/reflect/Method;

    const-string v0, "LID_STATE"

    const-string v1, "lid_state"

    .line 9
    invoke-static {v2, v0, v1}, Lcom/google/photos/vision/barhopper/zza;->getDeclaredStringFromClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;->LID_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
