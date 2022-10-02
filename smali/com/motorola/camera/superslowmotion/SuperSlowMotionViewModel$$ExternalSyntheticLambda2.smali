.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$drm$DrmSessionManager$DrmSessionReference$$InternalSyntheticLambda$4$5ef779f6a7a7c74db8249fef5c5471a26c0024372e7dd0959a9ac3eb3a85751e$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;->INSTANCE$com$google$android$exoplayer2$drm$DrmSessionManager$DrmSessionReference$$InternalSyntheticLambda$4$5ef779f6a7a7c74db8249fef5c5471a26c0024372e7dd0959a9ac3eb3a85751e$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 1
    sget-object p0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    invoke-static {}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->lambda$static$0()V

    return-void
.end method
