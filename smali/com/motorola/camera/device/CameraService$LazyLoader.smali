.class public final Lcom/motorola/camera/device/CameraService$LazyLoader;
.super Ljava/lang/Object;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/device/CameraService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/device/CameraService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/CameraService;-><init>(Lcom/motorola/camera/device/CameraService$1;)V

    sput-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    return-void
.end method
