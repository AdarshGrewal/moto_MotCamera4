.class public final synthetic Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireLatestImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
