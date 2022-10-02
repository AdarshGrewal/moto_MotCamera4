.class public final Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;
.super Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.source "SurfaceUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MTKG9X"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
    .locals 0

    const-string/jumbo p0, "surfaceType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x23

    if-ne p1, p0, :cond_2

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne p2, p0, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 3
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 6
    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->MTK_PREVIEW_HW_TEXTURE:Lcom/motorola/camera/AppFeatures$Feature;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x100

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x200

    goto :goto_0

    :cond_1
    const-wide/32 p0, 0x20003

    goto :goto_0

    :cond_2
    const/16 p0, 0x22

    if-ne p1, p0, :cond_3

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 p0, 0x3

    :goto_0
    return-wide p0
.end method
