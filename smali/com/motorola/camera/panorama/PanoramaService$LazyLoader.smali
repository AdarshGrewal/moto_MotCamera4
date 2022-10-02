.class public final Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;
.super Ljava/lang/Object;
.source "PanoramaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/panorama/PanoramaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/panorama/PanoramaService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/panorama/PanoramaService;-><init>(Lcom/motorola/camera/panorama/PanoramaService$1;)V

    sput-object v0, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    return-void
.end method
