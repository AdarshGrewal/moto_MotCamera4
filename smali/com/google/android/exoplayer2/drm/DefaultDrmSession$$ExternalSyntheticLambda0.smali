.class public final synthetic Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 1
    sget-object p0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->IDLE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

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
