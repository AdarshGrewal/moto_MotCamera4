.class public final synthetic Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    .line 1
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->release()V

    return-void
.end method
