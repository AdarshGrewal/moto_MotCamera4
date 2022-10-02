.class public final Lcom/google/android/exoplayer2/extractor/wav/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"


# instance fields
.field public final bitsPerSample:I

.field public final blockSize:I

.field public final extraData:[B

.field public final formatType:I

.field public final frameRateHz:I

.field public final numChannels:I


# direct methods
.method public constructor <init>(IIIIII[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatType",
            "numChannels",
            "frameRateHz",
            "averageBytesPerSecond",
            "blockSize",
            "bitsPerSample",
            "extraData"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->formatType:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    .line 6
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    .line 7
    iput-object p7, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->extraData:[B

    return-void
.end method
