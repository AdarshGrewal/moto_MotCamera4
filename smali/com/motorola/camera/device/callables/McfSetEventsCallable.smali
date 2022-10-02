.class public Lcom/motorola/camera/device/callables/McfSetEventsCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "McfSetEventsCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public mParameters:Lcom/motorola/camera/mcf/McfParameters;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CallableListener;Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p1, p1}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Lcom/motorola/camera/mcf/McfParameters;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/assetpacks/zzbi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/assetpacks/zzbi;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Lcom/motorola/camera/mcf/McfParameters;

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 4
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "McfSetEventsCallable"

    return-object p0
.end method
