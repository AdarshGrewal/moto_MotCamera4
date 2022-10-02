.class public Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;,
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;,
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
    }
.end annotation


# static fields
.field public static final SSA_DIALOGUE_FORMAT:[B

.field public static final SSA_PREFIX:[B

.field public static final SUBRIP_PREFIX:[B

.field public static final TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field public final blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public blockAdditionalId:I

.field public blockDurationUs:J

.field public blockFlags:I

.field public blockHasReferenceBlock:Z

.field public blockSampleCount:I

.field public blockSampleIndex:I

.field public blockSampleSizes:[I

.field public blockState:I

.field public blockTimeUs:J

.field public blockTrackNumber:I

.field public blockTrackNumberLength:I

.field public clusterTimecodeUs:J

.field public cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

.field public cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

.field public cuesContentPosition:J

.field public currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

.field public durationTimecode:J

.field public durationUs:J

.field public final encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public haveOutputSample:Z

.field public final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleEncodingHandled:Z

.field public sampleInitializationVectorRead:Z

.field public samplePartitionCount:I

.field public samplePartitionCountRead:Z

.field public sampleSignalByte:B

.field public sampleSignalByteRead:Z

.field public final sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public seekEntryId:I

.field public final seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public seekEntryPosition:J

.field public seekForCues:Z

.field public final seekForCuesEnabled:Z

.field public seekPositionAfterBuildingCues:J

.field public seenClusterPositionForCurrentCuePoint:Z

.field public segmentContentPosition:J

.field public segmentContentSize:J

.field public sentSeekMap:Z

.field public final subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public timecodeScale:J

.field public final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field public final varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

.field public final vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    .line 4
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 6
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 7
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 8
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 9
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    .line 11
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    .line 12
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 17
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 18
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 19
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 22
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 23
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 24
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-array p1, v0, [I

    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    return-void
.end method

.method public static ensureArrayCapacity([II)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "length"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static formatSubtitleTimecode(JLjava/lang/String;J)[B
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeUs",
            "timecodeFormat",
            "lastTimecodeValueScalingFactor"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-wide v3, 0xd693a400L

    .line 2
    div-long v3, p0, v3

    long-to-int v0, v3

    mul-int/lit16 v3, v0, 0xe10

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    sub-long/2addr p0, v3

    const-wide/32 v3, 0x3938700

    .line 3
    div-long v3, p0, v3

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0x3c

    int-to-long v7, v4

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 4
    div-long v7, p0, v5

    long-to-int v4, v7

    int-to-long v7, v4

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 5
    div-long/2addr p0, p3

    long-to-int p0, p0

    .line 6
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    const/4 p4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p4

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final assertInCues(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x25

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Element "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be in a Cues"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final assertInTrackEntry(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x2b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Element "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be in a TrackEntry"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "track",
            "timeUs",
            "flags",
            "size",
            "offset"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v6, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    if-nez v6, :cond_1

    move-wide/from16 v9, p2

    .line 4
    iput-wide v9, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkTimeUs:J

    .line 5
    iput v2, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkFlags:I

    .line 6
    iput v5, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    .line 7
    :cond_1
    iget v2, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    add-int v2, v2, p5

    iput v2, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    move/from16 v6, p6

    .line 8
    iput v6, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkOffset:I

    const/16 v2, 0x10

    if-lt v7, v2, :cond_d

    .line 9
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    goto/16 :goto_6

    :cond_2
    move-wide/from16 v9, p2

    move/from16 v6, p6

    .line 10
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v7, "S_TEXT/UTF8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "S_TEXT/ASS"

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    :cond_3
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const-string v11, "MatroskaExtractor"

    if-le v3, v4, :cond_4

    const-string v3, "Skipping subtitle sample in laced block."

    .line 12
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_4
    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v12, v14

    if-nez v3, :cond_6

    const-string v3, "Skipping subtitle sample with no duration."

    .line 14
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    move/from16 v3, p5

    goto :goto_4

    .line 15
    :cond_6
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 16
    iget-object v11, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v7, 0x3e8

    const-string v3, "%02d:%02d:%02d,%03d"

    .line 18
    invoke-static {v12, v13, v3, v7, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v3

    const/16 v7, 0x13

    goto :goto_1

    .line 19
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    const-wide/16 v7, 0x2710

    const-string v3, "%01d:%02d:%02d:%02d"

    .line 20
    invoke-static {v12, v13, v3, v7, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v3

    const/16 v7, 0x15

    .line 21
    :goto_1
    array-length v8, v3

    invoke-static {v3, v5, v11, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 23
    iget v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 24
    :goto_2
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 25
    iget v7, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-ge v3, v7, :cond_a

    .line 26
    iget-object v7, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 27
    aget-byte v7, v7, v3

    if-nez v7, :cond_9

    .line 28
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 29
    :cond_a
    :goto_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 30
    iget v7, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 31
    invoke-interface {v3, v5, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 32
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 33
    iget v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int v3, p5, v3

    :goto_4
    const/high16 v5, 0x10000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_c

    .line 34
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v5, v4, :cond_b

    const v5, -0x10000001

    and-int/2addr v2, v5

    goto :goto_5

    .line 35
    :cond_b
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 36
    iget v7, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 37
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v11, 0x2

    invoke-interface {v8, v5, v7, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    add-int/2addr v3, v7

    :cond_c
    :goto_5
    move v11, v2

    move v12, v3

    .line 38
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v14, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move-wide/from16 v9, p2

    move/from16 v13, p6

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 39
    :cond_d
    :goto_6
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    return-void
.end method

.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-eqz v4, :cond_66

    .line 2
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v7, :cond_66

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    move-object v7, v4

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;

    .line 4
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_1
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    const-wide/16 v8, -0x1

    if-eqz v4, :cond_0

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    .line 7
    iget-wide v12, v4, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    cmp-long v4, v10, v12

    if-ltz v4, :cond_0

    .line 8
    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 9
    iget v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    .line 10
    check-cast v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->endMasterElement(I)V

    goto/16 :goto_b

    .line 11
    :cond_0
    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    const v10, 0x1c53bb6b

    const v11, 0x1f43b675

    const/4 v12, 0x4

    if-nez v4, :cond_6

    .line 12
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v4, v1, v5, v3, v12}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v13

    const-wide/16 v15, -0x2

    cmp-long v4, v13, v15

    if-nez v4, :cond_4

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 14
    :goto_2
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-interface {v1, v4, v3, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 15
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v4

    if-eq v4, v6, :cond_3

    if-gt v4, v12, :cond_3

    .line 16
    iget-object v13, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v13, v4, v3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v13

    long-to-int v13, v13

    .line 17
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 18
    iget-object v14, v14, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x1549a966

    if-eq v13, v14, :cond_2

    if-eq v13, v11, :cond_2

    if-eq v13, v10, :cond_2

    const v14, 0x1654ae6b

    if-ne v13, v14, :cond_1

    goto :goto_3

    :cond_1
    move v14, v3

    goto :goto_4

    :cond_2
    :goto_3
    move v14, v5

    :goto_4
    if-eqz v14, :cond_3

    .line 19
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v13, v13

    goto :goto_5

    .line 20
    :cond_3
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_2

    :cond_4
    :goto_5
    cmp-long v4, v13, v8

    if-nez v4, :cond_5

    :goto_6
    move v4, v3

    goto/16 :goto_26

    :cond_5
    long-to-int v4, v13

    .line 21
    iput v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 22
    iput v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 23
    :cond_6
    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/16 v8, 0x8

    const/4 v9, 0x2

    if-ne v4, v5, :cond_7

    .line 24
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v4, v1, v3, v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 25
    iput v9, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 26
    :cond_7
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v10, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 27
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    const/4 v11, 0x3

    sparse-switch v10, :sswitch_data_0

    move v10, v3

    goto :goto_7

    :sswitch_0
    move v10, v4

    goto :goto_7

    :sswitch_1
    move v10, v12

    goto :goto_7

    :sswitch_2
    move v10, v5

    goto :goto_7

    :sswitch_3
    move v10, v11

    goto :goto_7

    :sswitch_4
    move v10, v9

    :goto_7
    if-eqz v10, :cond_65

    const/4 v13, 0x0

    if-eq v10, v5, :cond_54

    const-string v14, " not supported"

    const-wide/16 v17, 0x8

    if-eq v10, v9, :cond_3c

    const-wide/32 v19, 0x7fffffff

    if-eq v10, v11, :cond_32

    if-eq v10, v12, :cond_e

    if-ne v10, v4, :cond_d

    .line 28
    iget-wide v8, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v10, 0x4

    cmp-long v4, v8, v10

    if-eqz v4, :cond_9

    cmp-long v4, v8, v17

    if-nez v4, :cond_8

    goto :goto_8

    :cond_8
    const/16 v0, 0x28

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid float size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 30
    :cond_9
    :goto_8
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v8, v8

    .line 31
    invoke-virtual {v7, v1, v8}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v9

    if-ne v8, v12, :cond_a

    long-to-int v8, v9

    .line 32
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    float-to-double v8, v8

    goto :goto_9

    .line 33
    :cond_a
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 34
    :goto_9
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 35
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xb5

    if-eq v6, v10, :cond_c

    const/16 v10, 0x4489

    if-eq v6, v10, :cond_b

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_a

    .line 36
    :pswitch_0
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 37
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 38
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    goto/16 :goto_a

    .line 39
    :pswitch_1
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 40
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 41
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    goto/16 :goto_a

    .line 42
    :pswitch_2
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 43
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 44
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    goto :goto_a

    .line 45
    :pswitch_3
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 46
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 47
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    goto :goto_a

    .line 48
    :pswitch_4
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 49
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 50
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    goto :goto_a

    .line 51
    :pswitch_5
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 52
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 53
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    goto :goto_a

    .line 54
    :pswitch_6
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 55
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 56
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    goto :goto_a

    .line 57
    :pswitch_7
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 58
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 59
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    goto :goto_a

    .line 60
    :pswitch_8
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 61
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 62
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    goto :goto_a

    .line 63
    :pswitch_9
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 64
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 65
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    goto :goto_a

    .line 66
    :pswitch_a
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 67
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 68
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    goto :goto_a

    .line 69
    :pswitch_b
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 70
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 71
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    goto :goto_a

    .line 72
    :pswitch_c
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 73
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v6, v8

    .line 74
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    goto :goto_a

    :cond_b
    double-to-long v8, v8

    .line 75
    iput-wide v8, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    goto :goto_a

    .line 76
    :cond_c
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 77
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-int v6, v8

    .line 78
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 79
    :goto_a
    iput v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    :goto_b
    move v4, v5

    goto/16 :goto_26

    :cond_d
    const/16 v0, 0x20

    const-string v1, "Invalid element type "

    .line 80
    invoke-static {v0, v1, v10, v13}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 81
    :cond_e
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v11, v11

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 82
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0xa1

    const/16 v14, 0xa3

    if-eq v6, v12, :cond_1b

    if-eq v6, v14, :cond_1b

    const/16 v8, 0xa5

    if-eq v6, v8, :cond_17

    const/16 v8, 0x41ed

    if-eq v6, v8, :cond_14

    const/16 v8, 0x4255

    if-eq v6, v8, :cond_13

    const/16 v8, 0x47e2

    if-eq v6, v8, :cond_12

    const/16 v5, 0x53ab

    if-eq v6, v5, :cond_11

    const/16 v5, 0x63a2

    if-eq v6, v5, :cond_10

    const/16 v5, 0x7672

    if-ne v6, v5, :cond_f

    .line 83
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 84
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v11, [B

    iput-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 85
    invoke-interface {v1, v5, v3, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_1a

    :cond_f
    const/16 v0, 0x1a

    const-string v1, "Unexpected id: "

    .line 86
    invoke-static {v0, v1, v6, v13}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 87
    :cond_10
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 88
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v11, [B

    iput-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 89
    invoke-interface {v1, v5, v3, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_1a

    .line 90
    :cond_11
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 91
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 92
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 93
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 94
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    rsub-int/lit8 v6, v11, 0x4

    .line 95
    invoke-interface {v1, v5, v6, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 96
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 97
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    goto/16 :goto_1a

    .line 98
    :cond_12
    new-array v8, v11, [B

    .line 99
    invoke-interface {v1, v8, v3, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 100
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 101
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 102
    new-instance v6, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-direct {v6, v5, v8, v3, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    goto/16 :goto_1a

    .line 103
    :cond_13
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 104
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v11, [B

    iput-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 105
    invoke-interface {v1, v5, v3, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_1a

    .line 106
    :cond_14
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 107
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 108
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    const v6, 0x64767643

    if-eq v5, v6, :cond_16

    const v6, 0x64766343

    if-ne v5, v6, :cond_15

    goto :goto_c

    .line 109
    :cond_15
    invoke-interface {v1, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_1a

    .line 110
    :cond_16
    :goto_c
    new-array v5, v11, [B

    iput-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    .line 111
    invoke-interface {v1, v5, v3, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_1a

    .line 112
    :cond_17
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v5, v9, :cond_18

    goto/16 :goto_1a

    .line 113
    :cond_18
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 114
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1a

    .line 115
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v6, "V_VP9"

    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 117
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 118
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v8, v6

    if-ge v8, v11, :cond_19

    .line 119
    new-array v6, v11, [B

    :cond_19
    invoke-virtual {v5, v6, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 120
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 121
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 122
    invoke-interface {v1, v4, v3, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_1a

    .line 123
    :cond_1a
    invoke-interface {v1, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_1a

    .line 124
    :cond_1b
    iget v12, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-nez v12, :cond_1c

    .line 125
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v12, v1, v3, v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v12

    long-to-int v8, v12

    iput v8, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 126
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 127
    iget v8, v8, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 128
    iput v8, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    iput-wide v12, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 130
    iput v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 131
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 132
    :cond_1c
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v12, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    if-nez v8, :cond_1d

    .line 133
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v11, v5

    invoke-interface {v1, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 134
    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto/16 :goto_1a

    .line 135
    :cond_1d
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 136
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v12, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v12, v5, :cond_2e

    const/4 v10, 0x3

    .line 138
    invoke-virtual {v4, v1, v10}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 139
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 140
    iget-object v12, v12, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 141
    aget-byte v12, v12, v9

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v5

    const/16 v13, 0xff

    if-nez v12, :cond_1e

    .line 142
    iput v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 143
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 144
    iget v9, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v11, v9

    const/4 v10, 0x3

    sub-int/2addr v11, v10

    aput v11, v5, v3

    goto/16 :goto_13

    :cond_1e
    const/4 v10, 0x3

    const/4 v14, 0x4

    .line 145
    invoke-virtual {v4, v1, v14}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 146
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 147
    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 148
    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v5

    iput v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 149
    iget-object v10, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v10, v14}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v10

    iput-object v10, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-ne v12, v9, :cond_1f

    .line 150
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, -0x4

    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v11, v5

    .line 151
    invoke-static {v10, v3, v5, v11}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_13

    :cond_1f
    const/4 v9, 0x4

    if-ne v12, v5, :cond_22

    move v10, v3

    move v12, v10

    .line 152
    :goto_d
    iget v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v10, v15, :cond_21

    .line 153
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v3, v14, v10

    :cond_20
    add-int/2addr v9, v5

    .line 154
    invoke-virtual {v4, v1, v9}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 155
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 156
    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v9, -0x1

    .line 157
    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    .line 158
    iget-object v15, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v16, v15, v10

    add-int v16, v16, v14

    aput v16, v15, v10

    if-eq v14, v13, :cond_20

    .line 159
    aget v14, v15, v10

    add-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 160
    :cond_21
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    add-int/lit8 v14, v14, -0x1

    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v11, v5

    sub-int/2addr v11, v9

    sub-int/2addr v11, v12

    aput v11, v3, v14

    goto/16 :goto_13

    :cond_22
    const/4 v10, 0x3

    if-ne v12, v10, :cond_2d

    move v10, v5

    move v12, v9

    move v5, v3

    move v9, v5

    .line 161
    :goto_e
    iget v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v3, v15, :cond_2a

    .line 162
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v9, v14, v3

    add-int/lit8 v12, v12, 0x1

    .line 163
    invoke-virtual {v4, v1, v12}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 164
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 165
    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v12, -0x1

    .line 166
    aget-byte v14, v14, v15

    if-eqz v14, :cond_29

    const/16 v14, 0x8

    :goto_f
    if-ge v9, v14, :cond_26

    rsub-int/lit8 v14, v9, 0x7

    shl-int/2addr v10, v14

    .line 167
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 168
    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 169
    aget-byte v14, v14, v15

    and-int/2addr v14, v10

    if-eqz v14, :cond_25

    add-int/2addr v12, v9

    .line 170
    invoke-virtual {v4, v1, v12}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 171
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 172
    iget-object v14, v14, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v15, 0x1

    .line 173
    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    not-int v10, v10

    and-int/2addr v10, v14

    int-to-long v14, v10

    move/from16 v10, v16

    :goto_10
    if-ge v10, v12, :cond_23

    const/16 v16, 0x8

    shl-long v14, v14, v16

    .line 174
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 175
    iget-object v13, v13, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v17, v10, 0x1

    .line 176
    aget-byte v10, v13, v10

    const/16 v13, 0xff

    and-int/2addr v10, v13

    move/from16 v18, v12

    int-to-long v12, v10

    or-long/2addr v14, v12

    move/from16 v10, v17

    move/from16 v12, v18

    const/16 v13, 0xff

    goto :goto_10

    :cond_23
    move/from16 v18, v12

    if-lez v3, :cond_24

    mul-int/lit8 v9, v9, 0x7

    add-int/lit8 v9, v9, 0x6

    const-wide/16 v12, 0x1

    shl-long v9, v12, v9

    sub-long/2addr v9, v12

    sub-long/2addr v14, v9

    :cond_24
    move/from16 v12, v18

    goto :goto_11

    :cond_25
    add-int/lit8 v9, v9, 0x1

    const/16 v14, 0x8

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto :goto_f

    :cond_26
    const-wide/16 v14, 0x0

    :goto_11
    const-wide/32 v9, -0x80000000

    cmp-long v9, v14, v9

    if-ltz v9, :cond_28

    cmp-long v9, v14, v19

    if-gtz v9, :cond_28

    long-to-int v9, v14

    .line 177
    iget-object v10, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v3, :cond_27

    goto :goto_12

    :cond_27
    add-int/lit8 v13, v3, -0x1

    .line 178
    aget v13, v10, v13

    add-int/2addr v9, v13

    :goto_12
    aput v9, v10, v3

    .line 179
    aget v9, v10, v3

    add-int/2addr v5, v9

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto/16 :goto_e

    :cond_28
    const-string v0, "EBML lacing sample size out of range."

    const/4 v1, 0x0

    .line 180
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_29
    const/4 v0, 0x0

    const-string v1, "No valid varint length mask found"

    .line 181
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 182
    :cond_2a
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    add-int/lit8 v14, v14, -0x1

    iget v9, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v11, v9

    sub-int/2addr v11, v12

    sub-int/2addr v11, v5

    aput v11, v3, v14

    .line 183
    :goto_13
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 184
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    .line 185
    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v9, 0x1

    aget-byte v3, v3, v9

    const/16 v9, 0xff

    and-int/2addr v3, v9

    or-int/2addr v3, v5

    .line 186
    iget-wide v9, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v11, v3

    invoke-virtual {v4, v11, v12}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v11

    add-long/2addr v11, v9

    iput-wide v11, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 187
    iget v3, v8, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2c

    const/16 v3, 0xa3

    if-ne v6, v3, :cond_2b

    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 188
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 189
    aget-byte v3, v3, v5

    const/16 v9, 0x80

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_2b

    goto :goto_14

    :cond_2b
    const/4 v3, 0x0

    goto :goto_15

    :cond_2c
    :goto_14
    const/4 v3, 0x1

    .line 190
    :goto_15
    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 191
    iput v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v3, 0x0

    .line 192
    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_16

    :cond_2d
    const/16 v0, 0x24

    const-string v1, "Unexpected lacing value: "

    const/4 v2, 0x0

    .line 193
    invoke-static {v0, v1, v12, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_2e
    :goto_16
    const/16 v3, 0xa3

    if-ne v6, v3, :cond_30

    .line 194
    :goto_17
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v3, v5, :cond_2f

    .line 195
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v3, v5, v3

    invoke-virtual {v4, v1, v8, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I

    move-result v26

    .line 196
    iget-wide v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v9, v8, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v3, v9

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v9, v3

    add-long v23, v9, v5

    .line 197
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/16 v27, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v8

    move/from16 v25, v3

    invoke-virtual/range {v21 .. v27}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 198
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_17

    :cond_2f
    const/4 v3, 0x0

    .line 199
    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_19

    .line 200
    :cond_30
    :goto_18
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v3, v5, :cond_31

    .line 201
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v6, v5, v3

    .line 202
    invoke-virtual {v4, v1, v8, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I

    move-result v6

    aput v6, v5, v3

    .line 203
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_18

    :cond_31
    :goto_19
    const/4 v3, 0x0

    .line 204
    :goto_1a
    iput v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_25

    .line 205
    :cond_32
    iget-wide v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v5, v3, v19

    if-gtz v5, :cond_3b

    .line 206
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v3, v3

    if-nez v3, :cond_33

    const-string v3, ""

    goto :goto_1c

    .line 207
    :cond_33
    new-array v4, v3, [B

    const/4 v8, 0x0

    .line 208
    invoke-interface {v1, v4, v8, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    :goto_1b
    if-lez v3, :cond_34

    add-int/lit8 v9, v3, -0x1

    .line 209
    aget-byte v10, v4, v9

    if-nez v10, :cond_34

    move v3, v9

    goto :goto_1b

    .line 210
    :cond_34
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4, v8, v3}, Ljava/lang/String;-><init>([BII)V

    move-object v3, v9

    .line 211
    :goto_1c
    check-cast v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 212
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x86

    if-eq v6, v5, :cond_39

    const/16 v5, 0x4282

    if-eq v6, v5, :cond_37

    const/16 v5, 0x536e

    if-eq v6, v5, :cond_36

    const v5, 0x22b59c

    if-eq v6, v5, :cond_35

    goto :goto_1d

    .line 213
    :cond_35
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 214
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 215
    iput-object v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    goto :goto_1d

    .line 216
    :cond_36
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 217
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 218
    iput-object v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    goto :goto_1d

    :cond_37
    const-string/jumbo v4, "webm"

    .line 219
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "matroska"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_1d

    .line 220
    :cond_38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 221
    :cond_39
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 222
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 223
    iput-object v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    :cond_3a
    :goto_1d
    const/4 v3, 0x0

    .line 224
    iput v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_25

    :cond_3b
    const/16 v0, 0x29

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "String element size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 226
    :cond_3c
    iget-wide v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v5, v3, v17

    if-gtz v5, :cond_53

    .line 227
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v8, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v3, v3

    invoke-virtual {v7, v1, v3}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v3

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 228
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x5031

    const/16 v11, 0x37

    if-eq v8, v9, :cond_50

    const/16 v9, 0x5032

    if-eq v8, v9, :cond_4e

    const/16 v9, 0x32

    sparse-switch v8, :sswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_20

    .line 229
    :sswitch_5
    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    goto/16 :goto_20

    .line 230
    :sswitch_6
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 231
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 232
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_20

    .line 233
    :sswitch_7
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int v3, v3

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3e

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3d

    goto/16 :goto_20

    .line 234
    :cond_3d
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_20

    .line 235
    :cond_3e
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_20

    .line 236
    :cond_3f
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_20

    .line 237
    :cond_40
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_21

    .line 238
    :sswitch_8
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 239
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 240
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    goto/16 :goto_20

    .line 241
    :sswitch_9
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 242
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 243
    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_20

    .line 244
    :sswitch_a
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 245
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 246
    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    goto/16 :goto_20

    .line 247
    :sswitch_b
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 248
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 249
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    goto/16 :goto_20

    .line 250
    :sswitch_c
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 251
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const-wide/16 v8, 0x1

    cmp-long v3, v3, v8

    if-nez v3, :cond_41

    const/4 v3, 0x1

    goto :goto_1e

    :cond_41
    const/4 v3, 0x0

    .line 252
    :goto_1e
    iput-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    goto/16 :goto_20

    .line 253
    :sswitch_d
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 254
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 255
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto/16 :goto_20

    .line 256
    :sswitch_e
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 257
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 258
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    goto/16 :goto_20

    .line 259
    :sswitch_f
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 260
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 261
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto/16 :goto_20

    :sswitch_10
    long-to-int v3, v3

    .line 262
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    if-eqz v3, :cond_45

    const/4 v4, 0x1

    if-eq v3, v4, :cond_44

    const/4 v6, 0x3

    if-eq v3, v6, :cond_43

    const/16 v4, 0xf

    if-eq v3, v4, :cond_42

    goto/16 :goto_20

    .line 263
    :cond_42
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_20

    .line 264
    :cond_43
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_20

    .line 265
    :cond_44
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_20

    .line 266
    :cond_45
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_21

    .line 267
    :sswitch_11
    iget-wide v8, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr v3, v8

    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto/16 :goto_20

    :sswitch_12
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_46

    goto/16 :goto_20

    :cond_46
    const/16 v0, 0x38

    const-string v1, "AESSettingsCipherMode "

    .line 268
    invoke-static {v0, v1, v3, v4, v14}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :sswitch_13
    const-wide/16 v5, 0x5

    cmp-long v5, v3, v5

    if-nez v5, :cond_47

    goto/16 :goto_20

    :cond_47
    const/16 v0, 0x31

    const-string v1, "ContentEncAlgo "

    .line 269
    invoke-static {v0, v1, v3, v4, v14}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :sswitch_14
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_48

    goto/16 :goto_20

    :cond_48
    const-string v0, "EBMLReadVersion "

    .line 270
    invoke-static {v9, v0, v3, v4, v14}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :sswitch_15
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-ltz v5, :cond_49

    const-wide/16 v5, 0x2

    cmp-long v5, v3, v5

    if-gtz v5, :cond_49

    goto/16 :goto_20

    :cond_49
    const/16 v0, 0x35

    const-string v1, "DocTypeReadVersion "

    .line 271
    invoke-static {v0, v1, v3, v4, v14}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :sswitch_16
    const-wide/16 v5, 0x3

    cmp-long v5, v3, v5

    if-nez v5, :cond_4a

    goto/16 :goto_20

    :cond_4a
    const-string v0, "ContentCompAlgo "

    .line 272
    invoke-static {v9, v0, v3, v4, v14}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 273
    :sswitch_17
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 274
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 275
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    goto/16 :goto_20

    :sswitch_18
    const/4 v3, 0x1

    .line 276
    iput-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    goto/16 :goto_20

    :sswitch_19
    const/4 v6, 0x1

    .line 277
    iget-boolean v9, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v9, :cond_51

    .line 278
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 279
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v8, v3, v4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 280
    iput-boolean v6, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_20

    :sswitch_1a
    long-to-int v3, v3

    .line 281
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    goto/16 :goto_20

    .line 282
    :sswitch_1b
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v3

    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    goto/16 :goto_20

    .line 283
    :sswitch_1c
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 284
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 285
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    goto/16 :goto_20

    .line 286
    :sswitch_1d
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 287
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 288
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto/16 :goto_20

    .line 289
    :sswitch_1e
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 290
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    goto/16 :goto_20

    .line 291
    :sswitch_1f
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 292
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 293
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto/16 :goto_20

    .line 294
    :sswitch_20
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 295
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 296
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    goto/16 :goto_20

    .line 297
    :sswitch_21
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v3

    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    goto/16 :goto_20

    .line 298
    :sswitch_22
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 299
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const-wide/16 v8, 0x1

    cmp-long v3, v3, v8

    if-nez v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_1f

    :cond_4b
    const/4 v3, 0x0

    .line 300
    :goto_1f
    iput-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    goto/16 :goto_20

    .line 301
    :sswitch_23
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 302
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 303
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    goto :goto_20

    .line 304
    :pswitch_d
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 305
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 306
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    goto :goto_20

    .line 307
    :pswitch_e
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 308
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v3, v3

    .line 309
    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    goto :goto_20

    .line 310
    :pswitch_f
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 311
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int v3, v3

    .line 312
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v3

    if-eq v3, v6, :cond_51

    .line 313
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto :goto_20

    .line 314
    :pswitch_10
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int v3, v3

    .line 315
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    if-eq v3, v6, :cond_51

    .line 316
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto :goto_20

    .line 317
    :pswitch_11
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int v3, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4d

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4c

    goto :goto_20

    .line 318
    :cond_4c
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto :goto_20

    :cond_4d
    const/4 v3, 0x2

    .line 319
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto :goto_20

    :cond_4e
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_4f

    goto :goto_20

    :cond_4f
    const-string v0, "ContentEncodingScope "

    .line 320
    invoke-static {v11, v0, v3, v4, v14}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_50
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_52

    :cond_51
    :goto_20
    const/4 v4, 0x0

    .line 321
    :goto_21
    iput v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_25

    :cond_52
    const-string v0, "ContentEncodingOrder "

    .line 322
    invoke-static {v11, v0, v3, v4, v14}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_53
    const/4 v0, 0x0

    const/16 v1, 0x2a

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 324
    :cond_54
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    .line 325
    iget-wide v8, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v8, v3

    .line 326
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-direct {v10, v11, v8, v9, v13}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 327
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v8, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v9, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 328
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 329
    iget-object v11, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xa0

    if-eq v8, v11, :cond_61

    const/16 v11, 0xae

    if-eq v8, v11, :cond_60

    const/16 v11, 0xbb

    if-eq v8, v11, :cond_5f

    const/16 v11, 0x4dbb

    if-eq v8, v11, :cond_5d

    const/16 v6, 0x5035

    if-eq v8, v6, :cond_5c

    const/16 v6, 0x55d0

    if-eq v8, v6, :cond_5b

    const v6, 0x18538067

    if-eq v8, v6, :cond_58

    const v3, 0x1c53bb6b

    if-eq v8, v3, :cond_57

    const v3, 0x1f43b675

    if-eq v8, v3, :cond_55

    goto :goto_23

    .line 330
    :cond_55
    iget-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v3, :cond_5e

    .line 331
    iget-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz v3, :cond_56

    iget-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    const-wide/16 v8, -0x1

    cmp-long v3, v3, v8

    if-eqz v3, :cond_56

    const/4 v3, 0x1

    .line 332
    iput-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_23

    :cond_56
    const/4 v3, 0x1

    .line 333
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v8, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide/16 v10, 0x0

    .line 334
    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 335
    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 336
    iput-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_23

    .line 337
    :cond_57
    new-instance v3, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 338
    new-instance v3, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    goto :goto_23

    .line 339
    :cond_58
    iget-wide v11, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v13, -0x1

    cmp-long v6, v11, v13

    if-eqz v6, :cond_5a

    cmp-long v6, v11, v3

    if-nez v6, :cond_59

    goto :goto_22

    :cond_59
    const-string v0, "Multiple Segment elements not supported"

    const/4 v1, 0x0

    .line 340
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 341
    :cond_5a
    :goto_22
    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 342
    iput-wide v9, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    goto :goto_23

    .line 343
    :cond_5b
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 344
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v4, 0x1

    .line 345
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    goto :goto_23

    :cond_5c
    const/4 v3, 0x1

    .line 346
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 347
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 348
    iput-boolean v3, v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    goto :goto_23

    .line 349
    :cond_5d
    iput v6, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const-wide/16 v3, -0x1

    .line 350
    iput-wide v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    :cond_5e
    :goto_23
    const/4 v3, 0x0

    goto :goto_24

    :cond_5f
    const/4 v3, 0x0

    .line 351
    iput-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_24

    :cond_60
    const/4 v3, 0x0

    .line 352
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    iput-object v4, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_24

    :cond_61
    const/4 v3, 0x0

    .line 353
    iput-boolean v3, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    .line 354
    :goto_24
    iput v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    :goto_25
    const/4 v3, 0x1

    goto/16 :goto_6

    :goto_26
    if-eqz v4, :cond_64

    .line 355
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 356
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    if-eqz v3, :cond_62

    .line 357
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 358
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v3, 0x0

    .line 359
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_27

    .line 360
    :cond_62
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz v3, :cond_63

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_63

    .line 361
    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 362
    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    :goto_27
    const/4 v3, 0x1

    goto :goto_28

    :cond_63
    const/4 v3, 0x0

    :goto_28
    if-eqz v3, :cond_64

    const/4 v0, 0x1

    return v0

    :cond_64
    const/4 v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 363
    :cond_65
    iget-wide v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v3, v3

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 v3, 0x0

    .line 364
    iput v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_1

    :cond_66
    if-nez v4, :cond_69

    const/4 v1, 0x0

    .line 365
    :goto_29
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 366
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 367
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 368
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v3, :cond_67

    .line 370
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_68
    return v6

    :cond_69
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_23
        0x88 -> :sswitch_22
        0x9b -> :sswitch_21
        0x9f -> :sswitch_20
        0xb0 -> :sswitch_1f
        0xb3 -> :sswitch_1e
        0xba -> :sswitch_1d
        0xd7 -> :sswitch_1c
        0xe7 -> :sswitch_1b
        0xee -> :sswitch_1a
        0xf1 -> :sswitch_19
        0xfb -> :sswitch_18
        0x41e7 -> :sswitch_17
        0x4254 -> :sswitch_16
        0x4285 -> :sswitch_15
        0x42f7 -> :sswitch_14
        0x47e1 -> :sswitch_13
        0x47e8 -> :sswitch_12
        0x53ac -> :sswitch_11
        0x53b8 -> :sswitch_10
        0x54b0 -> :sswitch_f
        0x54b2 -> :sswitch_e
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_c
        0x55ee -> :sswitch_b
        0x56aa -> :sswitch_a
        0x56bb -> :sswitch_9
        0x6264 -> :sswitch_8
        0x7671 -> :sswitch_7
        0x23e383 -> :sswitch_6
        0x2ad7b1 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55b9
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "requiredLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    iget v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-lt v1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v1

    if-ge v2, p2, :cond_1

    .line 4
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 8
    iget v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    sub-int v2, p2, v0

    .line 9
    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 10
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final resetWriteSampleData()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 8
    iput-byte v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 10
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public final scaleTimecodeToUs(J)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unscaledTimecode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public seek(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "timeUs"
        }
    .end annotation

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;

    .line 4
    iput p1, p2, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 5
    iget-object p3, p2, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 7
    iput p1, p2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 8
    iput p1, p2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 9
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 10
    iput p1, p2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 11
    iput p1, p2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    move p2, p1

    .line 13
    :goto_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 14
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 15
    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz p3, :cond_0

    .line 16
    iput-boolean p1, p3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    .line 17
    iput p1, p3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :cond_1
    :goto_0
    long-to-int v3, v3

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 4
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 5
    invoke-interface {p1, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 6
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 7
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    :goto_1
    const-wide/32 v9, 0x1a45dfa3

    cmp-long v4, v7, v9

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 8
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    if-ne v4, v3, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 10
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 11
    invoke-interface {p1, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v4, 0x8

    shl-long v6, v7, v4

    const-wide/16 v8, -0x100

    and-long/2addr v6, v8

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    or-long v7, v6, v8

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v3

    .line 16
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v7, v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v11, v3, v9

    if-eqz v11, :cond_8

    if-eqz v2, :cond_4

    add-long v11, v7, v3

    cmp-long v0, v11, v0

    if-ltz v0, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v0, v0

    add-long v11, v7, v3

    cmp-long v0, v0, v11

    if-gez v0, :cond_7

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-nez v0, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    const-wide/16 v11, 0x0

    cmp-long v2, v0, v11

    if-ltz v2, :cond_8

    const-wide/32 v11, 0x7fffffff

    cmp-long v11, v0, v11

    if-lez v11, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_4

    long-to-int v0, v0

    .line 20
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 21
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    move v5, v6

    :cond_8
    :goto_3
    return v5
.end method

.method public final writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "track",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return p1

    .line 5
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 7
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return p1

    .line 9
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 10
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-nez v1, :cond_11

    .line 11
    iget-boolean v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_e

    .line 12
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v7, -0x40000001    # -1.9999999f

    and-int/2addr v1, v7

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 13
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v7, 0x80

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 15
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 16
    invoke-interface {p1, v1, v2, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 17
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 19
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 20
    aget-byte v8, v1, v2

    and-int/2addr v8, v7

    if-eq v8, v7, :cond_2

    .line 21
    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 22
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    const-string p1, "Extension bit is set in signal byte"

    .line 23
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 24
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v8, v1, 0x1

    if-ne v8, v6, :cond_4

    move v8, v6

    goto :goto_1

    :cond_4
    move v8, v2

    :goto_1
    if-eqz v8, :cond_f

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v2

    .line 25
    :goto_2
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 26
    iget-boolean v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v8, :cond_7

    .line 27
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 28
    iget-object v8, v8, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 29
    invoke-interface {p1, v8, v2, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 30
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 31
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 32
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 33
    iget-object v9, v8, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v7, v2

    :goto_3
    or-int/2addr v7, v5

    int-to-byte v7, v7

    .line 34
    aput-byte v7, v9, v2

    .line 35
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 36
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v7, v6, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 37
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 38
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 39
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v7, v5, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 40
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_7
    if-eqz v1, :cond_f

    .line 41
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v1, :cond_8

    .line 42
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 43
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 44
    invoke-interface {p1, v1, v2, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 45
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 46
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 48
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 49
    :cond_8
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/2addr v1, v3

    .line 50
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 51
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 52
    iget-object v7, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 53
    invoke-interface {p1, v7, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 54
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 55
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v1, v4

    add-int/2addr v1, v6

    int-to-short v1, v1

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v4

    .line 56
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_9

    .line 57
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_a

    .line 58
    :cond_9
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 59
    :cond_a
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v2

    move v8, v1

    .line 61
    :goto_4
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v1, v9, :cond_c

    .line 62
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 63
    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_b

    .line 64
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    int-to-short v8, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 65
    :cond_b
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v8, v9

    goto :goto_4

    .line 66
    :cond_c
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v8

    .line 67
    rem-int/2addr v9, v4

    if-ne v9, v6, :cond_d

    .line 68
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 69
    :cond_d
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v7, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 73
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_7

    .line 74
    :cond_e
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v1, :cond_f

    .line 75
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    array-length v8, v1

    .line 76
    iput-object v1, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 77
    iput v8, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 78
    iput v2, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 79
    :cond_f
    :goto_7
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez v1, :cond_10

    .line 80
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v7, 0x10000000

    or-int/2addr v1, v7

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 84
    iget-object v7, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v8, p3, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 85
    aput-byte v8, v7, v2

    shr-int/lit8 v8, p3, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 86
    aput-byte v8, v7, v6

    shr-int/lit8 v8, p3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 87
    aput-byte v8, v7, v4

    const/4 v8, 0x3

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    .line 88
    aput-byte v9, v7, v8

    .line 89
    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 90
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 91
    :cond_10
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 92
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 93
    iget v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/2addr p3, v1

    .line 94
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v7, "V_MPEG4/ISO/AVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v7, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_d

    .line 95
    :cond_12
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v1, :cond_1a

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 97
    iget v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-nez v1, :cond_13

    move v1, v6

    goto :goto_8

    :cond_13
    move v1, v2

    .line 98
    :goto_8
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 99
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    .line 100
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v4, :cond_14

    goto :goto_c

    .line 101
    :cond_14
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    const/16 v7, 0xa

    invoke-interface {p1, v4, v2, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 102
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 103
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    .line 104
    aget-byte v7, v4, v3

    const/4 v8, -0x8

    if-ne v7, v8, :cond_18

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    const/16 v8, 0x72

    if-ne v7, v8, :cond_18

    const/4 v7, 0x6

    aget-byte v7, v4, v7

    const/16 v8, 0x6f

    if-ne v7, v8, :cond_18

    const/4 v7, 0x7

    aget-byte v8, v4, v7

    and-int/lit16 v8, v8, 0xfe

    const/16 v9, 0xba

    if-eq v8, v9, :cond_15

    goto :goto_a

    .line 105
    :cond_15
    aget-byte v8, v4, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_16

    move v8, v6

    goto :goto_9

    :cond_16
    move v8, v2

    :goto_9
    const/16 v9, 0x28

    if-eqz v8, :cond_17

    const/16 v5, 0x9

    .line 106
    :cond_17
    aget-byte v4, v4, v5

    shr-int/2addr v4, v3

    and-int/2addr v4, v7

    shl-int v4, v9, v4

    goto :goto_b

    :cond_18
    :goto_a
    move v4, v2

    :goto_b
    if-nez v4, :cond_19

    goto :goto_c

    .line 107
    :cond_19
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    .line 108
    :cond_1a
    :goto_c
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v1, p3, :cond_1e

    sub-int v1, p3, v1

    .line 109
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I

    move-result v1

    .line 110
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 111
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_c

    .line 112
    :cond_1b
    :goto_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 113
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 114
    aput-byte v2, v1, v2

    .line 115
    aput-byte v2, v1, v6

    .line 116
    aput-byte v2, v1, v4

    .line 117
    iget v4, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v5, v4, 0x4

    .line 118
    :goto_e
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, p3, :cond_1e

    .line 119
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_1d

    .line 120
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v5, v6

    sub-int v8, v4, v6

    .line 121
    invoke-interface {p1, v1, v7, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    if-lez v6, :cond_1c

    .line 122
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 123
    iget-object v8, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v9, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v8, v9, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v8, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v8, v6

    iput v8, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 125
    :cond_1c
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 126
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 127
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 128
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 129
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 130
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_e

    .line 131
    :cond_1d
    invoke-virtual {p0, p1, v0, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I

    move-result v6

    .line 132
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 133
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 134
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_e

    .line 135
    :cond_1e
    iget-object p1, p2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 136
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 137
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, p1, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 138
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 139
    :cond_1f
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 140
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return p1
.end method

.method public final writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "samplePrefix",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    add-int/2addr v0, p3

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 7
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 8
    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 10
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    :goto_0
    return p1
.end method
