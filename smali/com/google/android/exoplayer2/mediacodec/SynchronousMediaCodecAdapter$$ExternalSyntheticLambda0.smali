.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->onFrameRendered(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;JJ)V

    return-void
.end method
