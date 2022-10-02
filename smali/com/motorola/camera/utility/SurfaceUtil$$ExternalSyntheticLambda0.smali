.class public final synthetic Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v0, "$surfaceType"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    const-string p1, "it.acquireLatestImage()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    return-void
.end method
