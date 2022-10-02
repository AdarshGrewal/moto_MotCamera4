.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# instance fields
.field public accumulatedSampleSizes:[[J

.field public atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public durationUs:J

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public fileType:I

.field public firstVideoTrackIndex:I

.field public final flags:I

.field public motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field public final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public parserState:I

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleTrackIndex:I

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

.field public final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    return-void
.end method

.method public static maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleTable",
            "seekTimeUs",
            "offset"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    return-wide p3

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p0, p0, v0

    .line 4
    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v3, v3

    if-nez v3, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    :cond_0
    const-wide/16 v3, -0x1

    .line 5
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    .line 6
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v5, v9, v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 7
    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 8
    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v9

    :cond_1
    if-ne v9, v8, :cond_2

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    .line 10
    :cond_2
    iget-object v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v10, v10, v9

    .line 11
    iget-object v12, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v12, v12, v9

    cmp-long v14, v10, v1

    if-gez v14, :cond_3

    .line 12
    iget v14, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/2addr v14, v8

    if-ge v9, v14, :cond_3

    .line 13
    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    if-eq v1, v8, :cond_3

    if-eq v1, v9, :cond_3

    .line 14
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v2, v1

    .line 15
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v4, v1

    goto :goto_0

    :cond_3
    move-wide v4, v3

    move-wide v2, v6

    :goto_0
    move-wide v8, v4

    move-wide v3, v2

    move-wide v1, v10

    goto :goto_1

    :cond_4
    const-wide v12, 0x7fffffffffffffffL

    move-wide v8, v3

    move-wide v3, v6

    :goto_1
    const/4 v5, 0x0

    .line 16
    :goto_2
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v11, v10

    if-ge v5, v11, :cond_7

    .line 17
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v5, v11, :cond_6

    .line 18
    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 19
    invoke-static {v10, v1, v2, v12, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v11

    cmp-long v13, v3, v6

    if-eqz v13, :cond_5

    .line 20
    invoke-static {v10, v3, v4, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v8

    :cond_5
    move-wide v12, v11

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 21
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v1, v3, v6

    if-nez v1, :cond_8

    .line 22
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1

    .line 23
    :cond_8
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v1, v3, v4, v8, v9}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 24
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v2
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
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
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final processAtomEnded(J)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atomEndPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_59

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 3
    iget v1, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v3, 0x6d6f6f76

    if-ne v1, v3, :cond_57

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v8, v4

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    move v8, v3

    .line 6
    :goto_1
    new-instance v10, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    const v3, 0x75647461

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    const v4, 0x696c7374

    const v5, 0x68646c72    # 4.3148E24f

    const v6, 0x6d657461

    const/4 v7, 0x4

    const/16 v9, 0x8

    const/4 v11, 0x0

    if-eqz v3, :cond_38

    .line 8
    sget-object v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    .line 9
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 10
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object v12, v11

    move-object v13, v12

    .line 11
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v14

    if-lt v14, v9, :cond_36

    .line 12
    iget v14, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 13
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    move/from16 v16, v4

    .line 14
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, v6, :cond_2f

    .line 15
    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v4, v14, v15

    .line 16
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    iget v6, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 18
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 19
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    if-eq v7, v5, :cond_1

    add-int/lit8 v6, v6, 0x4

    .line 20
    :cond_1
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move/from16 v5, v16

    .line 21
    :goto_3
    iget v6, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v6, v4, :cond_2e

    .line 22
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 23
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    if-ne v11, v5, :cond_2d

    .line 24
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v6, v7

    .line 25
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :goto_4
    iget v5, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v5, v6, :cond_2b

    .line 28
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/2addr v7, v5

    .line 29
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    shr-int/lit8 v9, v5, 0x18

    and-int/lit16 v9, v9, 0xff

    const/16 v11, 0xa9

    move/from16 v16, v6

    const-string v6, "TCON"

    move-object/from16 v17, v1

    const-string v1, "MetadataUtil"

    if-eq v9, v11, :cond_1b

    const/16 v11, 0xfd

    if-ne v9, v11, :cond_2

    goto/16 :goto_9

    :cond_2
    const v9, 0x676e7265

    if-ne v5, v9, :cond_5

    .line 30
    :try_start_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v5

    if-lez v5, :cond_3

    .line 31
    sget-object v9, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v11, v9

    if-gt v5, v11, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 32
    aget-object v5, v9, v5

    goto :goto_5

    :cond_3
    move-object v5, v13

    :goto_5
    if-eqz v5, :cond_4

    .line 33
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v1, v6, v13, v5}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v5, "Failed to parse standard genre code"

    .line 34
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v8

    goto/16 :goto_c

    :cond_5
    const v6, 0x6469736b

    if-ne v5, v6, :cond_6

    const-string v1, "TPOS"

    .line 35
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_6

    :cond_6
    const v6, 0x74726b6e

    if-ne v5, v6, :cond_7

    const-string v1, "TRCK"

    .line 36
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_6

    :cond_7
    const v6, 0x746d706f

    if-ne v5, v6, :cond_8

    const-string v1, "TBPM"

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 37
    invoke-static {v5, v1, v3, v9, v6}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1

    goto/16 :goto_6

    :cond_8
    const v6, 0x6370696c

    if-ne v5, v6, :cond_9

    const-string v1, "TCMP"

    const/4 v6, 0x1

    .line 38
    invoke-static {v5, v1, v3, v6, v6}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1

    goto/16 :goto_6

    :cond_9
    const v6, 0x636f7672

    if-ne v5, v6, :cond_a

    .line 39
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v1

    goto/16 :goto_6

    :cond_a
    const v6, 0x61415254

    if-ne v5, v6, :cond_b

    const-string v1, "TPE2"

    .line 40
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_6

    :cond_b
    const v6, 0x736f6e6d

    if-ne v5, v6, :cond_c

    const-string v1, "TSOT"

    .line 41
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_6

    :cond_c
    const v6, 0x736f616c

    if-ne v5, v6, :cond_d

    const-string v1, "TSO2"

    .line 42
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_6

    :cond_d
    const v6, 0x736f6172

    if-ne v5, v6, :cond_e

    const-string v1, "TSOA"

    .line 43
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_6

    :cond_e
    const v6, 0x736f6161

    if-ne v5, v6, :cond_f

    const-string v1, "TSOP"

    .line 44
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_6

    :cond_f
    const v6, 0x736f636f

    if-ne v5, v6, :cond_10

    const-string v1, "TSOC"

    .line 45
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_6

    :cond_10
    const v6, 0x72746e67

    if-ne v5, v6, :cond_11

    const-string v1, "ITUNESADVISORY"

    const/4 v6, 0x0

    .line 46
    invoke-static {v5, v1, v3, v6, v6}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1

    goto :goto_6

    :cond_11
    const v6, 0x70676170

    if-ne v5, v6, :cond_12

    const-string v1, "ITUNESGAPLESS"

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 47
    invoke-static {v5, v1, v3, v6, v9}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1

    goto :goto_6

    :cond_12
    const v6, 0x736f736e

    if-ne v5, v6, :cond_13

    const-string v1, "TVSHOWSORT"

    .line 48
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_6

    :cond_13
    const v6, 0x74767368

    if-ne v5, v6, :cond_14

    const-string v1, "TVSHOW"

    .line 49
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    :goto_6
    move/from16 v19, v8

    goto/16 :goto_f

    :cond_14
    const v6, 0x2d2d2d2d

    if-ne v5, v6, :cond_1a

    const/4 v1, -0x1

    const/4 v5, -0x1

    move-object v6, v13

    .line 50
    :goto_7
    iget v9, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v9, v7, :cond_18

    .line 51
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    move/from16 v18, v9

    .line 52
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    move/from16 v19, v8

    const/4 v8, 0x4

    .line 53
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const v8, 0x6d65616e

    if-ne v9, v8, :cond_15

    add-int/lit8 v11, v11, -0xc

    .line 54
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    goto :goto_8

    :cond_15
    const v8, 0x6e616d65

    if-ne v9, v8, :cond_16

    add-int/lit8 v11, v11, -0xc

    .line 55
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_16
    const v8, 0x64617461

    if-ne v9, v8, :cond_17

    move v5, v11

    move/from16 v1, v18

    :cond_17
    add-int/lit8 v11, v11, -0xc

    .line 56
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_8
    move/from16 v8, v19

    goto :goto_7

    :cond_18
    move/from16 v19, v8

    if-eqz v13, :cond_27

    if-eqz v6, :cond_27

    const/4 v8, -0x1

    if-ne v1, v8, :cond_19

    goto/16 :goto_c

    .line 57
    :cond_19
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v1, 0x10

    .line 58
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v5, v5, -0x10

    .line 59
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    invoke-direct {v5, v13, v6, v1}, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    goto/16 :goto_f

    :cond_1a
    move/from16 v19, v8

    goto/16 :goto_a

    :cond_1b
    :goto_9
    move/from16 v19, v8

    const v8, 0xffffff

    and-int/2addr v8, v5

    const v9, 0x636d74

    if-ne v8, v9, :cond_1c

    .line 61
    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v1

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1c
    const v9, 0x6e616d

    if-eq v8, v9, :cond_29

    const v9, 0x74726b

    if-ne v8, v9, :cond_1d

    goto/16 :goto_e

    :cond_1d
    const v9, 0x636f6d

    if-eq v8, v9, :cond_28

    const v9, 0x777274

    if-ne v8, v9, :cond_1e

    goto/16 :goto_d

    :cond_1e
    const v9, 0x646179

    if-ne v8, v9, :cond_1f

    const-string v1, "TDRC"

    .line 62
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_f

    :cond_1f
    const v9, 0x415254

    if-ne v8, v9, :cond_20

    const-string v1, "TPE1"

    .line 63
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_f

    :cond_20
    const v9, 0x746f6f

    if-ne v8, v9, :cond_21

    const-string v1, "TSSE"

    .line 64
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_f

    :cond_21
    const v9, 0x616c62

    if-ne v8, v9, :cond_22

    const-string v1, "TALB"

    .line 65
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_f

    :cond_22
    const v9, 0x6c7972

    if-ne v8, v9, :cond_23

    const-string v1, "USLT"

    .line 66
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_f

    :cond_23
    const v9, 0x67656e

    if-ne v8, v9, :cond_24

    .line 67
    invoke-static {v5, v6, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_f

    :cond_24
    const v6, 0x677270

    if-ne v8, v6, :cond_25

    const-string v1, "TIT1"

    .line 68
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_f

    :cond_25
    :goto_a
    const-string v6, "Skipped unknown metadata entry: "

    .line 69
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_26
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 70
    :goto_b
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_28
    :goto_d
    const-string v1, "TCOM"

    .line 71
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto :goto_f

    :cond_29
    :goto_e
    const-string v1, "TIT2"

    .line 72
    invoke-static {v5, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_f
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    if-eqz v1, :cond_2a

    .line 74
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    const/4 v13, 0x0

    move/from16 v6, v16

    move-object/from16 v1, v17

    move/from16 v8, v19

    goto/16 :goto_4

    .line 75
    :goto_10
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 76
    throw v0

    :cond_2b
    move-object/from16 v17, v1

    move/from16 v19, v8

    .line 77
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_11

    :cond_2c
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_12

    :cond_2d
    move-object/from16 v17, v1

    move/from16 v19, v8

    add-int/2addr v6, v7

    .line 78
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v9, 0x8

    const/4 v13, 0x0

    const v5, 0x696c7374

    goto/16 :goto_3

    :cond_2e
    move-object/from16 v17, v1

    move/from16 v19, v8

    :goto_11
    const/4 v1, 0x0

    :goto_12
    move-object v11, v1

    goto :goto_16

    :cond_2f
    move-object/from16 v17, v1

    move/from16 v19, v8

    const v1, 0x736d7461

    if-ne v4, v1, :cond_35

    .line 79
    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v1, v14, v15

    const/16 v4, 0xc

    .line 80
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 81
    :goto_13
    iget v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v4, v1, :cond_34

    .line 82
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 83
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    const v7, 0x73617574

    if-ne v6, v7, :cond_33

    const/16 v1, 0xe

    if-ge v5, v1, :cond_30

    goto :goto_15

    :cond_30
    const/4 v1, 0x5

    .line 84
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 85
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_31

    const/16 v5, 0xd

    if-eq v1, v5, :cond_31

    goto :goto_15

    :cond_31
    if-ne v1, v4, :cond_32

    const/high16 v1, 0x43700000    # 240.0f

    goto :goto_14

    :cond_32
    const/high16 v1, 0x42f00000    # 120.0f

    :goto_14
    const/4 v4, 0x1

    .line 86
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 88
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v4, v4, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v7, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v7, v1, v5}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 v1, 0x0

    aput-object v7, v4, v1

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v12, v6

    goto :goto_16

    :cond_33
    add-int/2addr v4, v5

    .line 89
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_13

    :cond_34
    :goto_15
    const/4 v1, 0x0

    move-object v12, v1

    :cond_35
    :goto_16
    add-int/2addr v14, v15

    .line 90
    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v9, 0x8

    const/4 v13, 0x0

    const v4, 0x696c7374

    const v5, 0x68646c72    # 4.3148E24f

    const v6, 0x6d657461

    const/4 v7, 0x4

    move-object/from16 v1, v17

    move/from16 v8, v19

    goto/16 :goto_2

    :cond_36
    move-object/from16 v17, v1

    move/from16 v19, v8

    .line 91
    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 92
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 93
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_37

    .line 94
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_37
    const v6, 0x6d657461

    goto :goto_17

    :cond_38
    move-object/from16 v17, v1

    move/from16 v19, v8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_17
    move-object v11, v3

    .line 95
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 96
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    const v4, 0x68646c72    # 4.3148E24f

    .line 97
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const v5, 0x6b657973

    .line 98
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    const v6, 0x696c7374

    .line 99
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v4, :cond_41

    if-eqz v5, :cond_41

    if-eqz v3, :cond_41

    .line 100
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0x10

    .line 101
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 102
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v6, 0x6d647461

    if-eq v4, v6, :cond_39

    goto/16 :goto_1d

    .line 103
    :cond_39
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v5, 0xc

    .line 104
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 105
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 106
    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v5, :cond_3a

    .line 107
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    const/4 v9, 0x4

    .line 108
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v8, v8, -0x8

    .line 109
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_3a
    const/16 v4, 0x8

    .line 110
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 111
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :goto_19
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-le v8, v4, :cond_3f

    .line 114
    iget v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 115
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 116
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3d

    if-ge v9, v5, :cond_3d

    .line 117
    aget-object v9, v6, v9

    add-int v12, v4, v8

    .line 118
    :goto_1a
    iget v13, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v13, v12, :cond_3c

    .line 119
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 120
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    move/from16 v16, v5

    const v5, 0x64617461

    if-ne v15, v5, :cond_3b

    .line 121
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 122
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/lit8 v14, v14, -0x10

    .line 123
    new-array v13, v14, [B

    .line 124
    iget-object v15, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v6

    iget v6, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move-object/from16 v20, v11

    const/4 v11, 0x0

    invoke-static {v15, v6, v13, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget v6, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v14

    iput v6, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 126
    new-instance v6, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    invoke-direct {v6, v9, v13, v12, v5}, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    goto :goto_1b

    :cond_3b
    move-object/from16 v18, v6

    move-object/from16 v20, v11

    add-int/2addr v13, v14

    .line 127
    invoke-virtual {v3, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move/from16 v5, v16

    goto :goto_1a

    :cond_3c
    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v11

    const/4 v6, 0x0

    :goto_1b
    if-eqz v6, :cond_3e

    .line 128
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3d
    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v11

    const/16 v5, 0x34

    const-string v6, "Skipped metadata with unknown key index: "

    const-string v11, "AtomParsers"

    .line 129
    invoke-static {v5, v6, v9, v11}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    :cond_3e
    :goto_1c
    add-int/2addr v4, v8

    .line 130
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v4, 0x8

    move/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v11, v20

    goto/16 :goto_19

    :cond_3f
    move-object/from16 v20, v11

    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_1e

    :cond_40
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1f

    :cond_41
    :goto_1d
    move-object/from16 v20, v11

    :goto_1e
    const/4 v3, 0x0

    :goto_1f
    move-object v11, v3

    .line 132
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    goto :goto_20

    :cond_42
    const/4 v3, 0x0

    :goto_20
    move v7, v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    .line 133
    sget-object v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    move-object v3, v10

    move/from16 v8, v19

    .line 134
    invoke-static/range {v2 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v2

    .line 135
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 136
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    const/4 v8, 0x0

    move v9, v7

    move v12, v8

    move-wide v7, v5

    :goto_21
    if-ge v12, v4, :cond_51

    .line 138
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 139
    iget v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v14, :cond_43

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v18, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto/16 :goto_29

    .line 140
    :cond_43
    iget-object v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object v15, v1

    .line 141
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    cmp-long v7, v0, v7

    if-eqz v7, :cond_44

    goto :goto_22

    :cond_44
    iget-wide v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 142
    :goto_22
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 143
    new-instance v7, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 144
    invoke-interface {v3, v12, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v7, v14, v13, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 145
    iget v8, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v8, v8, 0x1e

    move-object/from16 v16, v2

    .line 146
    iget-object v2, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 147
    iput v8, v2, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 148
    iget v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    move/from16 v18, v4

    const/4 v4, 0x2

    if-ne v8, v4, :cond_45

    const-wide/16 v21, 0x0

    cmp-long v4, v0, v21

    if-lez v4, :cond_45

    iget v4, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v13, 0x1

    if-le v4, v13, :cond_45

    int-to-float v4, v4

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    div-float/2addr v4, v0

    .line 149
    iput v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    :cond_45
    const/4 v0, 0x1

    if-ne v8, v0, :cond_47

    .line 150
    iget v0, v10, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    iget v4, v10, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v4, v1, :cond_46

    const/4 v1, 0x1

    goto :goto_23

    :cond_46
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_47

    .line 151
    iput v0, v2, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 152
    iget v0, v10, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 153
    iput v0, v2, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    :cond_47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    aput-object v15, v0, v1

    move-object/from16 v4, p0

    .line 154
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_48

    const/4 v13, 0x0

    goto :goto_24

    :cond_48
    new-instance v13, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v13, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_24
    const/4 v1, 0x1

    aput-object v13, v0, v1

    .line 155
    new-instance v13, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v13, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    const/4 v1, 0x1

    if-ne v8, v1, :cond_49

    if-eqz v20, :cond_4b

    move-wide/from16 v21, v5

    move-object/from16 v13, v20

    goto :goto_26

    :cond_49
    const/4 v1, 0x2

    if-ne v8, v1, :cond_4b

    if-eqz v11, :cond_4b

    const/4 v1, 0x0

    .line 156
    :goto_25
    iget-object v8, v11, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-wide/from16 v21, v5

    array-length v5, v8

    if-ge v1, v5, :cond_4c

    .line 157
    aget-object v5, v8, v1

    .line 158
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    if-eqz v6, :cond_4a

    .line 159
    check-cast v5, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 160
    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v8, "com.android.capture.fps"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 161
    new-instance v13, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-direct {v13, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_26

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v21

    goto :goto_25

    :cond_4b
    move-wide/from16 v21, v5

    :cond_4c
    :goto_26
    const/4 v1, 0x0

    :goto_27
    const/4 v5, 0x2

    if-ge v1, v5, :cond_4e

    .line 162
    aget-object v5, v0, v1

    if-nez v5, :cond_4d

    goto :goto_28

    .line 163
    :cond_4d
    iget-object v5, v5, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {v13, v5}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    move-object v13, v5

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 164
    :cond_4e
    iget-object v0, v13, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    if-lez v0, :cond_4f

    .line 165
    iput-object v13, v2, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 166
    :cond_4f
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 167
    iget v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    const/4 v0, -0x1

    if-ne v9, v0, :cond_50

    .line 168
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    :cond_50
    move-object/from16 v0, v17

    .line 169
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v5, v21

    :goto_29
    add-int/lit8 v12, v12, 0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v17, v0

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v4, v18

    goto/16 :goto_21

    :cond_51
    move-object v4, v0

    move-object/from16 v0, v17

    const/4 v1, -0x1

    const-wide/16 v7, 0x0

    .line 170
    iput v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 171
    iput-wide v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 172
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 173
    array-length v2, v0

    new-array v2, v2, [[J

    .line 174
    array-length v5, v0

    new-array v5, v5, [I

    .line 175
    array-length v6, v0

    new-array v6, v6, [J

    .line 176
    array-length v9, v0

    new-array v9, v9, [Z

    const/4 v10, 0x0

    .line 177
    :goto_2a
    array-length v11, v0

    if-ge v10, v11, :cond_52

    .line 178
    aget-object v11, v0, v10

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v11, v11, [J

    aput-object v11, v2, v10

    .line 179
    aget-object v11, v0, v10

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    aput-wide v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_52
    const/4 v10, 0x0

    move v11, v10

    .line 180
    :goto_2b
    array-length v12, v0

    if-ge v11, v12, :cond_56

    const-wide v12, 0x7fffffffffffffffL

    move v14, v10

    .line 181
    :goto_2c
    array-length v15, v0

    if-ge v14, v15, :cond_54

    .line 182
    aget-boolean v15, v9, v14

    if-nez v15, :cond_53

    aget-wide v15, v6, v14

    cmp-long v15, v15, v12

    if-gtz v15, :cond_53

    .line 183
    aget-wide v12, v6, v14

    move v1, v14

    :cond_53
    add-int/lit8 v14, v14, 0x1

    goto :goto_2c

    .line 184
    :cond_54
    aget v12, v5, v1

    .line 185
    aget-object v13, v2, v1

    aput-wide v7, v13, v12

    .line 186
    aget-object v13, v0, v1

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v13, v13, v12

    int-to-long v13, v13

    add-long/2addr v7, v13

    const/4 v13, 0x1

    add-int/2addr v12, v13

    .line 187
    aput v12, v5, v1

    .line 188
    aget-object v14, v2, v1

    array-length v14, v14

    if-ge v12, v14, :cond_55

    .line 189
    aget-object v13, v0, v1

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v13, v12

    aput-wide v12, v6, v1

    goto :goto_2d

    .line 190
    :cond_55
    aput-boolean v13, v9, v1

    add-int/lit8 v11, v11, 0x1

    :goto_2d
    const/4 v1, -0x1

    goto :goto_2b

    .line 191
    :cond_56
    iput-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 192
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 193
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 194
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    .line 195
    iput v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_2e

    :cond_57
    move-object v4, v0

    .line 196
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 197
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 198
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_2e
    move-object v0, v4

    goto/16 :goto_0

    :cond_59
    move-object v4, v0

    .line 199
    iget v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5a

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_5a
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 38
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

    .line 1
    :cond_0
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const v4, 0x66747970

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_41

    const-wide/32 v16, 0x40000

    if-eq v3, v15, :cond_34

    const-wide/16 v18, 0x8

    const/4 v4, 0x7

    if-eq v3, v9, :cond_1f

    const/4 v8, 0x3

    if-ne v3, v8, :cond_1e

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 3
    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    if-eqz v6, :cond_1a

    if-eq v6, v15, :cond_18

    const/16 v4, 0x890

    if-eq v6, v9, :cond_12

    if-ne v6, v8, :cond_11

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v16

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v18

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v11, v6

    sub-long v11, v18, v11

    long-to-int v6, v11

    .line 6
    new-instance v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v11, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 7
    iget-object v12, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 8
    invoke-interface {v1, v12, v14, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    move v1, v14

    .line 9
    :goto_0
    iget-object v12, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 10
    iget-object v12, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    .line 11
    iget-wide v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long v13, v13, v16

    long-to-int v13, v13

    .line 12
    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 13
    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 14
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v13

    .line 15
    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "Super_SlowMotion_BGM"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v10

    goto :goto_2

    :sswitch_1
    const-string v6, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :sswitch_2
    const-string v6, "Super_SlowMotion_Data"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v9

    goto :goto_2

    :sswitch_3
    const-string v6, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v15

    goto :goto_2

    :sswitch_4
    const-string v6, "SlowMotion_Data"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eqz v6, :cond_a

    if-eq v6, v15, :cond_9

    if-eq v6, v9, :cond_8

    if-eq v6, v8, :cond_7

    if-ne v6, v10, :cond_6

    const/16 v6, 0xb01

    goto :goto_3

    :cond_6
    const-string v0, "Invalid SEF name"

    .line 17
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v6, 0xb04

    goto :goto_3

    :cond_8
    const/16 v6, 0xb00

    goto :goto_3

    :cond_9
    const/16 v6, 0xb03

    goto :goto_3

    :cond_a
    move v6, v4

    .line 18
    :goto_3
    iget v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->size:I

    add-int/lit8 v13, v13, 0x8

    sub-int/2addr v12, v13

    if-eq v6, v4, :cond_c

    const/16 v13, 0xb00

    if-eq v6, v13, :cond_f

    const/16 v12, 0xb01

    if-eq v6, v12, :cond_f

    const/16 v12, 0xb03

    if-eq v6, v12, :cond_f

    const/16 v12, 0xb04

    if-ne v6, v12, :cond_b

    goto :goto_5

    .line 19
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 20
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v12

    .line 22
    sget-object v13, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v13, v12}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    .line 23
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_e

    .line 24
    sget-object v14, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v14, v10}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v10

    .line 25
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v8, :cond_d

    const/4 v14, 0x0

    .line 26
    :try_start_0
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 27
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 28
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v10, v15

    shl-int v30, v15, v10

    .line 29
    new-instance v10, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v30}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x4

    goto :goto_4

    :catch_0
    move-exception v0

    .line 30
    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 31
    :cond_d
    invoke-static {v7, v7}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 32
    :cond_e
    new-instance v10, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    invoke-direct {v10, v6}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    .line 33
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x4

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_10
    const-wide/16 v12, 0x0

    .line 34
    iput-wide v12, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    move v1, v15

    goto/16 :goto_c

    .line 35
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 36
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    .line 37
    iget v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v7, v7, -0xc

    const/16 v10, 0x8

    sub-int/2addr v7, v10

    .line 38
    new-instance v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v10, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 39
    iget-object v11, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v12, 0x0

    .line 40
    invoke-interface {v1, v11, v12, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const/4 v1, 0x0

    .line 41
    :goto_6
    div-int/lit8 v11, v7, 0xc

    if-ge v1, v11, :cond_16

    .line 42
    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v11

    const/16 v12, 0xb01

    if-eq v11, v4, :cond_14

    const/16 v13, 0xb00

    if-eq v11, v13, :cond_13

    if-eq v11, v12, :cond_13

    const/16 v12, 0xb03

    const/16 v14, 0xb04

    if-eq v11, v12, :cond_15

    if-eq v11, v14, :cond_15

    const/16 v4, 0x8

    .line 44
    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_8

    :cond_13
    const/16 v12, 0xb03

    goto :goto_7

    :cond_14
    const/16 v12, 0xb03

    const/16 v13, 0xb00

    :goto_7
    const/16 v14, 0xb04

    .line 45
    :cond_15
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v12, v4

    sub-long v12, v5, v12

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    int-to-long v14, v4

    sub-long/2addr v12, v14

    .line 46
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    .line 47
    iget-object v14, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    new-instance v15, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    invoke-direct {v15, v11, v12, v13, v4}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;-><init>(IJI)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x890

    const/4 v15, 0x1

    goto :goto_6

    .line 48
    :cond_16
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const-wide/16 v4, 0x0

    .line 49
    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_9

    .line 50
    :cond_17
    iput v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 51
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_9

    :cond_18
    move v5, v14

    const/16 v6, 0x8

    new-array v7, v6, [B

    .line 52
    invoke-interface {v1, v7, v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 53
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v10, 0x1

    aget-byte v11, v7, v10

    and-int/lit16 v10, v11, 0xff

    shl-int/2addr v10, v6

    or-int/2addr v5, v10

    aget-byte v6, v7, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v7, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    const/16 v6, 0x8

    add-int/2addr v5, v6

    .line 54
    iput v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    .line 55
    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v8, 0x6

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v7, v8

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    const v5, 0x53454654

    if-eq v4, v5, :cond_19

    const-wide/16 v4, 0x0

    .line 56
    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_9

    .line 57
    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v1, v1, -0xc

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 58
    iput v9, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    :goto_9
    const/4 v1, 0x1

    goto :goto_c

    .line 59
    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1c

    cmp-long v1, v4, v18

    if-gez v1, :cond_1b

    goto :goto_a

    :cond_1b
    sub-long v4, v4, v18

    goto :goto_b

    :cond_1c
    :goto_a
    const-wide/16 v4, 0x0

    .line 60
    :goto_b
    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v1, 0x1

    .line 61
    iput v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 62
    :goto_c
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_1d
    return v1

    .line 64
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 65
    :cond_1f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 66
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_2a

    const-wide v10, 0x7fffffffffffffffL

    move-wide/from16 v20, v10

    move-wide/from16 v26, v20

    move-wide/from16 v28, v26

    const/4 v3, -0x1

    const/4 v8, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 67
    :goto_d
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    sget v22, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    array-length v4, v15

    if-ge v12, v4, :cond_27

    .line 68
    aget-object v4, v15, v12

    .line 69
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 70
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v15, v7, :cond_20

    goto :goto_10

    .line 71
    :cond_20
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v31, v4, v15

    .line 72
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    aget-object v4, v4, v12

    aget-wide v33, v4, v15

    sub-long v31, v31, v5

    const-wide/16 v23, 0x0

    cmp-long v4, v31, v23

    if-ltz v4, :cond_22

    cmp-long v4, v31, v16

    if-ltz v4, :cond_21

    goto :goto_e

    :cond_21
    const/4 v4, 0x0

    goto :goto_f

    :cond_22
    :goto_e
    const/4 v4, 0x1

    :goto_f
    if-nez v4, :cond_23

    if-nez v14, :cond_24

    :cond_23
    if-ne v4, v14, :cond_25

    cmp-long v7, v31, v28

    if-gez v7, :cond_25

    :cond_24
    move v14, v4

    move v8, v12

    move-wide/from16 v28, v31

    move-wide/from16 v26, v33

    :cond_25
    cmp-long v7, v33, v20

    if-gez v7, :cond_26

    move v13, v4

    move v3, v12

    move-wide/from16 v20, v33

    :cond_26
    :goto_10
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x7

    const/4 v7, 0x0

    goto :goto_d

    :cond_27
    cmp-long v4, v20, v10

    if-eqz v4, :cond_28

    if-eqz v13, :cond_28

    const-wide/32 v10, 0xa00000

    add-long v20, v20, v10

    cmp-long v4, v26, v20

    if-gez v4, :cond_29

    :cond_28
    move v3, v8

    .line 73
    :cond_29
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v8, -0x1

    goto/16 :goto_14

    .line 74
    :cond_2a
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v3, v3, v4

    .line 75
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 76
    iget v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 77
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v10, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v10, v10, v7

    .line 78
    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v8, v8, v7

    sub-long v5, v10, v5

    .line 79
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v12, v12

    add-long/2addr v5, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-ltz v12, :cond_33

    cmp-long v12, v5, v16

    if-ltz v12, :cond_2b

    goto/16 :goto_13

    .line 80
    :cond_2b
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_2c

    add-long v5, v5, v18

    add-int/lit8 v8, v8, -0x8

    :cond_2c
    long-to-int v2, v5

    .line 81
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 82
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v5, :cond_2f

    .line 83
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 84
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    .line 85
    aput-byte v6, v2, v6

    const/4 v10, 0x1

    .line 86
    aput-byte v6, v2, v10

    .line 87
    aput-byte v6, v2, v9

    rsub-int/lit8 v6, v5, 0x4

    .line 88
    :goto_11
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v9, v8, :cond_32

    .line 89
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v9, :cond_2e

    .line 90
    invoke-interface {v1, v2, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 91
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 92
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 93
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    if-ltz v9, :cond_2d

    .line 94
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 95
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 96
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v11, 0x4

    invoke-interface {v4, v9, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 97
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v11

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v8, v6

    goto :goto_11

    :cond_2d
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    .line 98
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v10, 0x0

    .line 99
    invoke-interface {v4, v1, v9, v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v9

    .line 100
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 101
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 102
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_11

    .line 103
    :cond_2f
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 104
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_30

    .line 105
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v8, v2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 106
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x7

    invoke-interface {v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 107
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_30
    add-int/lit8 v8, v8, 0x7

    .line 108
    :cond_31
    :goto_12
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v8, :cond_32

    sub-int v2, v8, v2

    const/4 v5, 0x0

    .line 109
    invoke-interface {v4, v1, v2, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v2

    .line 110
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 111
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 112
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v5, v2

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_12

    :cond_32
    move/from16 v35, v8

    .line 113
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v32, v2, v7

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v34, v1, v7

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v31, v4

    invoke-interface/range {v31 .. v37}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 114
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v1, -0x1

    .line 115
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v1, 0x0

    .line 116
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 117
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 118
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v8, 0x0

    goto :goto_14

    .line 119
    :cond_33
    :goto_13
    iput-wide v10, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v8, 0x1

    :goto_14
    return v8

    .line 120
    :cond_34
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 121
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 122
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v3, :cond_3d

    .line 123
    iget-object v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 124
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v5, v5

    invoke-interface {v1, v10, v11, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 125
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    if-ne v5, v4, :cond_3c

    const/16 v4, 0x8

    .line 126
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 127
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x71742020

    const v6, 0x68656963

    if-eq v4, v6, :cond_36

    if-eq v4, v5, :cond_35

    const/4 v4, 0x0

    goto :goto_15

    :cond_35
    const/4 v4, 0x1

    goto :goto_15

    :cond_36
    move v4, v9

    :goto_15
    if-eqz v4, :cond_37

    goto :goto_17

    :cond_37
    const/4 v4, 0x4

    .line 128
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 129
    :cond_38
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_3b

    .line 130
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    if-eq v4, v6, :cond_3a

    if-eq v4, v5, :cond_39

    const/4 v4, 0x0

    goto :goto_16

    :cond_39
    const/4 v4, 0x1

    goto :goto_16

    :cond_3a
    move v4, v9

    :goto_16
    if-eqz v4, :cond_38

    goto :goto_17

    :cond_3b
    const/4 v4, 0x0

    .line 131
    :goto_17
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_18

    .line 132
    :cond_3c
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 133
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 134
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3d
    cmp-long v3, v5, v16

    if-gez v3, :cond_3f

    long-to-int v3, v5

    .line 135
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_3e
    :goto_18
    const/4 v3, 0x0

    goto :goto_19

    .line 136
    :cond_3f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v3, 0x1

    .line 137
    :goto_19
    invoke-virtual {v0, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz v3, :cond_40

    .line 138
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v3, v9, :cond_40

    const/4 v14, 0x1

    goto :goto_1a

    :cond_40
    const/4 v14, 0x0

    :goto_1a
    if-eqz v14, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_41
    move v3, v15

    .line 139
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v5, :cond_45

    .line 140
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 141
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 142
    invoke-interface {v1, v5, v7, v6, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_44

    .line 143
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    if-ne v3, v9, :cond_43

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_43

    .line 144
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 145
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 146
    invoke-interface {v3, v7, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    .line 147
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v5, :cond_42

    const/4 v7, 0x0

    goto :goto_1b

    :cond_42
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v5, v8, v7

    invoke-direct {v6, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v7, v6

    .line 148
    :goto_1b
    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 149
    iput-object v7, v5, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 150
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 151
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 152
    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    .line 153
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 154
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_43
    const/4 v14, 0x0

    goto/16 :goto_25

    :cond_44
    const/16 v3, 0x8

    .line 155
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 156
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 157
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 158
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 159
    :cond_45
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_46

    .line 160
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 161
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v5, 0x8

    .line 162
    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 163
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 164
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_1c

    :cond_46
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_48

    .line 165
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_47

    .line 166
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    if-eqz v3, :cond_47

    .line 167
    iget-wide v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_47
    cmp-long v3, v5, v7

    if-eqz v3, :cond_48

    .line 168
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 169
    :cond_48
    :goto_1c
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_55

    .line 170
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_4a

    const v6, 0x7472616b

    if-eq v5, v6, :cond_4a

    const v6, 0x6d646961

    if-eq v5, v6, :cond_4a

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_4a

    const v6, 0x7374626c

    if-eq v5, v6, :cond_4a

    const v6, 0x65647473

    if-eq v5, v6, :cond_4a

    if-ne v5, v7, :cond_49

    goto :goto_1d

    :cond_49
    const/4 v6, 0x0

    goto :goto_1e

    :cond_4a
    :goto_1d
    const/4 v6, 0x1

    :goto_1e
    const v8, 0x68646c72    # 4.3148E24f

    if-eqz v6, :cond_4e

    .line 171
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v3, v5

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v9, v9

    sub-long/2addr v3, v9

    cmp-long v5, v5, v9

    if-eqz v5, :cond_4c

    .line 172
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    if-ne v5, v7, :cond_4c

    .line 173
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 174
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 175
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    .line 176
    invoke-interface {v1, v5, v7, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 177
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    .line 178
    iget v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v7, 0x4

    .line 179
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 180
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    if-eq v7, v8, :cond_4b

    add-int/lit8 v6, v6, 0x4

    .line 181
    :cond_4b
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 182
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 183
    iget v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 184
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 185
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 186
    :cond_4c
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 187
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4d

    .line 188
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_1f

    .line 189
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :goto_1f
    const/4 v3, 0x1

    goto/16 :goto_24

    :cond_4e
    const v6, 0x6d646864

    if-eq v5, v6, :cond_50

    const v6, 0x6d766864

    if-eq v5, v6, :cond_50

    if-eq v5, v8, :cond_50

    const v6, 0x73747364

    if-eq v5, v6, :cond_50

    const v6, 0x73747473

    if-eq v5, v6, :cond_50

    const v6, 0x73747373

    if-eq v5, v6, :cond_50

    const v6, 0x63747473

    if-eq v5, v6, :cond_50

    const v6, 0x656c7374

    if-eq v5, v6, :cond_50

    const v6, 0x73747363

    if-eq v5, v6, :cond_50

    const v6, 0x7374737a

    if-eq v5, v6, :cond_50

    const v6, 0x73747a32

    if-eq v5, v6, :cond_50

    const v6, 0x7374636f

    if-eq v5, v6, :cond_50

    const v6, 0x636f3634

    if-eq v5, v6, :cond_50

    const v6, 0x746b6864

    if-eq v5, v6, :cond_50

    if-eq v5, v4, :cond_50

    const v4, 0x75647461

    if-eq v5, v4, :cond_50

    const v4, 0x6b657973

    if-eq v5, v4, :cond_50

    const v4, 0x696c7374

    if-ne v5, v4, :cond_4f

    goto :goto_20

    :cond_4f
    const/4 v14, 0x0

    goto :goto_21

    :cond_50
    :goto_20
    const/4 v14, 0x1

    :goto_21
    if-eqz v14, :cond_53

    const/16 v4, 0x8

    if-ne v3, v4, :cond_51

    const/4 v14, 0x1

    goto :goto_22

    :cond_51
    const/4 v14, 0x0

    .line 190
    :goto_22
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 191
    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_52

    const/4 v14, 0x1

    goto :goto_23

    :cond_52
    const/4 v14, 0x0

    :goto_23
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 192
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 193
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 194
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v5, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 195
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x1

    .line 197
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_24

    .line 198
    :cond_53
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    .line 199
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_54

    .line 200
    new-instance v3, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v8, 0x0

    add-long v14, v10, v5

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    sub-long v4, v12, v5

    move-object v7, v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v16, v4

    invoke-direct/range {v7 .. v17}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_54
    const/4 v3, 0x0

    .line 201
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x1

    .line 202
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_24
    move v14, v3

    :goto_25
    if-nez v14, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_55
    const-string v0, "Atom size less than header length (unsupported)."

    .line 203
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 4
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

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    .line 7
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 10
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 11
    iput v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 12
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    if-eqz p0, :cond_3

    .line 14
    array-length p1, p0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object p2, p0, v0

    .line 15
    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 16
    invoke-virtual {v2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 17
    invoke-virtual {v2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v3

    .line 18
    :cond_2
    iput v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
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
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 2
    :goto_0
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
