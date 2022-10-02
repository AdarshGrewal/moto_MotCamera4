.class public final Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/ImageCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager;-><init>(Lcom/motorola/camera/saving/ImageCaptureManager$1;)V

    sput-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    return-void
.end method
