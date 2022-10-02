.class public Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SetSystemPropertyCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/assetpacks/zzbi;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/assetpacks/zzbi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mValue:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    .line 3
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.os.SystemProperties"

    const-string v5, "set"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v2

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v4, v5, v7}, Lkotlinx/coroutines/channels/ActorKt;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p0, v4, v8

    .line 4
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemSetting"

    const-string v1, "setString error "

    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    :goto_0
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v3}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SetSystemPropertyCallable"

    return-object p0
.end method
