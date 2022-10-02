.class public final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endMasterElement(I)V
    .locals 29
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

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 2
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa0

    const/4 v8, 0x0

    if-eq v1, v0, :cond_7d

    const/16 v0, 0xae

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_11

    const/16 v0, 0x4dbb

    const v2, 0x1c53bb6b

    if-eq v1, v0, :cond_f

    const/16 v0, 0x6240

    if-eq v1, v0, :cond_d

    const/16 v0, 0x6d80

    if-eq v1, v0, :cond_b

    const v0, 0x1549a966

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v0, :cond_9

    const v0, 0x1654ae6b

    if-eq v1, v0, :cond_7

    if-eq v1, v2, :cond_0

    goto/16 :goto_31

    .line 3
    :cond_0
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_6

    .line 4
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 5
    iget-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v13, -0x1

    cmp-long v6, v11, v13

    if-eqz v6, :cond_5

    iget-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    cmp-long v6, v11, v9

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 6
    iget v6, v1, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    .line 7
    iget v9, v2, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    if-eq v9, v6, :cond_1

    goto/16 :goto_2

    .line 8
    :cond_1
    new-array v9, v6, [I

    .line 9
    new-array v10, v6, [J

    .line 10
    new-array v11, v6, [J

    .line 11
    new-array v12, v6, [J

    move v13, v8

    :goto_0
    if-ge v13, v6, :cond_2

    .line 12
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 13
    iget-wide v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v16

    add-long v16, v16, v14

    aput-wide v16, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v6, -0x1

    if-ge v8, v1, :cond_3

    add-int/lit8 v1, v8, 0x1

    .line 14
    aget-wide v13, v10, v1

    aget-wide v15, v10, v8

    sub-long/2addr v13, v15

    long-to-int v2, v13

    aput v2, v9, v8

    .line 15
    aget-wide v13, v12, v1

    aget-wide v15, v12, v8

    sub-long/2addr v13, v15

    aput-wide v13, v11, v8

    move v8, v1

    goto :goto_1

    .line 16
    :cond_3
    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v13, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v2, v13

    aget-wide v13, v10, v1

    sub-long/2addr v2, v13

    long-to-int v2, v2

    aput v2, v9, v1

    .line 17
    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v13, v12, v1

    sub-long/2addr v2, v13

    aput-wide v2, v11, v1

    .line 18
    aget-wide v2, v11, v1

    const-wide/16 v13, 0x0

    cmp-long v6, v2, v13

    if-gtz v6, :cond_4

    const/16 v6, 0x48

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MatroskaExtractor"

    .line 20
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 22
    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    .line 23
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    .line 24
    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    .line 25
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v1, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_3

    .line 26
    :cond_5
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide/16 v8, 0x0

    .line 27
    invoke-direct {v1, v2, v3, v8, v9}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 28
    :goto_3
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 29
    iput-boolean v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    .line 30
    :cond_6
    iput-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 31
    iput-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    goto/16 :goto_31

    .line 32
    :cond_7
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_31

    :cond_8
    const-string v0, "No valid tracks were found"

    .line 34
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 35
    :cond_9
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_a

    const-wide/32 v0, 0xf4240

    .line 36
    iput-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 37
    :cond_a
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long v2, v0, v9

    if-eqz v2, :cond_82

    .line 38
    invoke-virtual {v7, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_31

    .line 39
    :cond_b
    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 40
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_82

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez v0, :cond_c

    goto/16 :goto_31

    :cond_c
    const-string v0, "Combining encryption and compression is not supported"

    .line 41
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 42
    :cond_d
    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 43
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_82

    .line 44
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    if-eqz v1, :cond_e

    .line 45
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v3, v4, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v7, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string/jumbo v9, "video/webm"

    invoke-direct {v6, v7, v9, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v6, v3, v8

    .line 46
    invoke-direct {v2, v5, v4, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 47
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto/16 :goto_31

    :cond_e
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 48
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 49
    :cond_f
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    if-eq v0, v3, :cond_10

    iget-wide v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v8, -0x1

    cmp-long v1, v3, v8

    if-eqz v1, :cond_10

    if-ne v0, v2, :cond_82

    .line 50
    iput-wide v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto/16 :goto_31

    :cond_10
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    .line 51
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 52
    :cond_11
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    if-eqz v1, :cond_7c

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v9, "A_MPEG/L2"

    const-string v10, "A_VORBIS"

    const-string v11, "A_TRUEHD"

    const-string v12, "A_MS/ACM"

    const-string v13, "V_MPEG4/ISO/SP"

    const-string v14, "V_MPEG4/ISO/AP"

    const/16 v16, 0x12

    const/16 v17, 0x11

    const-string v3, "V_AV1"

    const-string v5, "A_DTS"

    const-string v15, "A_AC3"

    const-string v4, "A_AAC"

    const-string v8, "A_DTS/LOSSLESS"

    const-string v2, "S_VOBSUB"

    move-object/from16 v18, v0

    const-string v0, "V_MPEG4/ISO/AVC"

    move-object/from16 v19, v7

    const-string v7, "V_MPEG4/ISO/ASP"

    move-object/from16 v20, v14

    const-string v14, "S_DVBSUB"

    move-object/from16 v21, v13

    const-string v13, "V_MS/VFW/FOURCC"

    move-object/from16 v22, v12

    const-string v12, "A_MPEG/L3"

    move-object/from16 v23, v11

    sparse-switch v6, :sswitch_data_0

    :goto_4
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    goto/16 :goto_6

    :sswitch_0
    const-string v6, "A_OPUS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    const/16 v1, 0x1f

    goto/16 :goto_5

    :sswitch_1
    const-string v6, "A_FLAC"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_13
    const/16 v1, 0x1e

    goto/16 :goto_5

    :sswitch_2
    const-string v6, "A_EAC3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    const/16 v1, 0x1d

    goto/16 :goto_5

    :sswitch_3
    const-string v6, "V_MPEG2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    const/16 v1, 0x1c

    goto/16 :goto_5

    :sswitch_4
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    const/16 v1, 0x1b

    goto/16 :goto_5

    :sswitch_5
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    const/16 v1, 0x1a

    goto/16 :goto_5

    :sswitch_6
    const-string v6, "S_TEXT/ASS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4

    :cond_18
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    const/16 v1, 0x19

    goto/16 :goto_7

    :sswitch_7
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4

    :cond_19
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    const/16 v1, 0x18

    goto/16 :goto_7

    :sswitch_8
    const-string v6, "A_PCM/INT/BIG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_4

    :cond_1a
    const/16 v1, 0x17

    goto/16 :goto_5

    :sswitch_9
    const-string v6, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v1, 0x16

    goto/16 :goto_5

    :sswitch_a
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v1, 0x15

    goto/16 :goto_5

    :sswitch_b
    const-string v6, "V_THEORA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v1, 0x14

    goto/16 :goto_5

    :sswitch_c
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    const/16 v1, 0x13

    goto/16 :goto_7

    :sswitch_d
    const-string v6, "V_VP9"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_4

    :cond_1f
    move/from16 v1, v16

    goto/16 :goto_5

    :sswitch_e
    const-string v6, "V_VP8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_4

    :cond_20
    move/from16 v1, v17

    goto/16 :goto_5

    :sswitch_f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_4

    :cond_21
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    const/16 v1, 0x10

    goto/16 :goto_7

    :sswitch_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_4

    :cond_22
    const/16 v1, 0xf

    goto/16 :goto_5

    :sswitch_11
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_4

    :cond_23
    const/16 v1, 0xe

    goto :goto_5

    :sswitch_12
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_4

    :cond_24
    const/16 v1, 0xd

    goto :goto_5

    :sswitch_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_4

    :cond_25
    const/16 v1, 0xc

    goto :goto_5

    :sswitch_14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_4

    :cond_26
    const/16 v1, 0xb

    goto :goto_5

    :sswitch_15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_4

    :cond_27
    const/16 v1, 0xa

    goto :goto_5

    :sswitch_16
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_4

    :cond_28
    const/16 v1, 0x9

    goto :goto_5

    :sswitch_17
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_4

    :cond_29
    const/16 v1, 0x8

    goto :goto_5

    :sswitch_18
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_4

    :cond_2a
    const/4 v1, 0x7

    goto :goto_5

    :sswitch_19
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto/16 :goto_4

    :cond_2b
    const/4 v1, 0x6

    :goto_5
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    goto/16 :goto_7

    :sswitch_1a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    const/4 v1, 0x5

    goto :goto_7

    :sswitch_1b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto/16 :goto_4

    :cond_2d
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    const/4 v1, 0x4

    goto :goto_7

    :sswitch_1c
    move-object/from16 v6, v23

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v11, v20

    if-nez v1, :cond_2e

    goto :goto_6

    :cond_2e
    const/4 v1, 0x3

    goto :goto_7

    :sswitch_1d
    move-object/from16 v11, v22

    move-object/from16 v6, v23

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v11, v20

    if-nez v1, :cond_2f

    goto :goto_6

    :cond_2f
    const/4 v1, 0x2

    goto :goto_7

    :sswitch_1e
    move-object/from16 v11, v21

    move-object/from16 v6, v23

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v11, v20

    if-nez v1, :cond_30

    goto :goto_6

    :cond_30
    const/4 v1, 0x1

    goto :goto_7

    :sswitch_1f
    move-object/from16 v11, v20

    move-object/from16 v6, v23

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_6

    :cond_31
    const/4 v1, 0x0

    goto :goto_7

    :goto_6
    const/4 v1, -0x1

    :goto_7
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_8

    :pswitch_0
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_7b

    move-object/from16 v20, v11

    move-object/from16 v1, v19

    .line 55
    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v1, v18

    move-object/from16 v18, v11

    iget v11, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move/from16 v25, v11

    .line 56
    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v26

    move-object/from16 v27, v1

    const/16 v1, 0xf

    sparse-switch v26, :sswitch_data_1

    goto/16 :goto_9

    :sswitch_20
    const-string v0, "A_OPUS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_9

    :cond_32
    const/16 v0, 0x1f

    goto/16 :goto_a

    :sswitch_21
    const-string v0, "A_FLAC"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_9

    :cond_33
    const/16 v0, 0x1e

    goto/16 :goto_a

    :sswitch_22
    const-string v0, "A_EAC3"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_9

    :cond_34
    const/16 v0, 0x1d

    goto/16 :goto_a

    :sswitch_23
    const-string v0, "V_MPEG2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_9

    :cond_35
    const/16 v0, 0x1c

    goto/16 :goto_a

    :sswitch_24
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_9

    :cond_36
    const/16 v0, 0x1b

    goto/16 :goto_a

    :sswitch_25
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_9

    :cond_37
    const/16 v0, 0x1a

    goto/16 :goto_a

    :sswitch_26
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_9

    :cond_38
    const/16 v0, 0x19

    goto/16 :goto_a

    :sswitch_27
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_9

    :cond_39
    const/16 v0, 0x18

    goto/16 :goto_a

    :sswitch_28
    const-string v0, "A_PCM/INT/BIG"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_9

    :cond_3a
    const/16 v0, 0x17

    goto/16 :goto_a

    :sswitch_29
    const-string v0, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_9

    :cond_3b
    const/16 v0, 0x16

    goto/16 :goto_a

    :sswitch_2a
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_9

    :cond_3c
    const/16 v0, 0x15

    goto/16 :goto_a

    :sswitch_2b
    const-string v0, "V_THEORA"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_9

    :cond_3d
    const/16 v0, 0x14

    goto/16 :goto_a

    :sswitch_2c
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_9

    :cond_3e
    const/16 v0, 0x13

    goto/16 :goto_a

    :sswitch_2d
    const-string v0, "V_VP9"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_9

    :cond_3f
    move/from16 v0, v16

    goto/16 :goto_a

    :sswitch_2e
    const-string v0, "V_VP8"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_9

    :cond_40
    move/from16 v0, v17

    goto/16 :goto_a

    :sswitch_2f
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_9

    :cond_41
    const/16 v0, 0x10

    goto/16 :goto_a

    :sswitch_30
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_9

    :cond_42
    move v0, v1

    goto/16 :goto_a

    :sswitch_31
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_9

    :cond_43
    const/16 v0, 0xe

    goto/16 :goto_a

    :sswitch_32
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_9

    :cond_44
    const/16 v0, 0xd

    goto/16 :goto_a

    :sswitch_33
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_9

    :cond_45
    const/16 v0, 0xc

    goto/16 :goto_a

    :sswitch_34
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_9

    :cond_46
    const/16 v0, 0xb

    goto/16 :goto_a

    :sswitch_35
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_9

    :cond_47
    const/16 v0, 0xa

    goto/16 :goto_a

    :sswitch_36
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_9

    :cond_48
    const/16 v0, 0x9

    goto/16 :goto_a

    :sswitch_37
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_9

    :cond_49
    const/16 v0, 0x8

    goto :goto_a

    :sswitch_38
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_9

    :cond_4a
    const/4 v0, 0x7

    goto :goto_a

    :sswitch_39
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_9

    :cond_4b
    const/4 v0, 0x6

    goto :goto_a

    :sswitch_3a
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_9

    :cond_4c
    const/4 v0, 0x5

    goto :goto_a

    :sswitch_3b
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_9

    :cond_4d
    const/4 v0, 0x4

    goto :goto_a

    :sswitch_3c
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_9

    :cond_4e
    const/4 v0, 0x3

    goto :goto_a

    :sswitch_3d
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_9

    :cond_4f
    const/4 v0, 0x2

    goto :goto_a

    :sswitch_3e
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_9

    :cond_50
    const/4 v0, 0x1

    goto :goto_a

    :sswitch_3f
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_9

    :cond_51
    const/4 v0, 0x0

    goto :goto_a

    :goto_9
    const/4 v0, -0x1

    :goto_a
    const-string/jumbo v2, "video/x-unknown"

    const-string v3, ". Setting mimeType to "

    const-string v4, "audio/x-unknown"

    const-string v5, "MatroskaExtractor"

    packed-switch v0, :pswitch_data_1

    const-string v0, "Unrecognized codec identifier."

    const/4 v2, 0x0

    .line 57
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1
    const/16 v0, 0x1680

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, v27

    .line 59
    iget-object v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    .line 60
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v7, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v3, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "audio/opus"

    const/4 v7, 0x3

    goto/16 :goto_1a

    :pswitch_2
    move-object/from16 v6, v27

    .line 64
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "audio/flac"

    goto/16 :goto_11

    :pswitch_3
    move-object/from16 v6, v27

    const-string v2, "audio/eac3"

    goto/16 :goto_c

    :pswitch_4
    move-object/from16 v6, v27

    const-string/jumbo v2, "video/mpeg2"

    goto/16 :goto_c

    :pswitch_5
    move-object/from16 v6, v27

    const-string v2, "application/x-subrip"

    goto/16 :goto_c

    :pswitch_6
    move-object/from16 v6, v27

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v0

    .line 66
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 67
    iget v2, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 68
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v2, "video/hevc"

    goto/16 :goto_f

    :pswitch_7
    move-object/from16 v6, v27

    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 70
    iget-object v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 71
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string/jumbo v1, "text/x-ssa"

    goto/16 :goto_11

    :pswitch_8
    move-object/from16 v6, v27

    .line 72
    iget v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v11

    if-nez v11, :cond_54

    .line 73
    iget v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v1, 0x59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_9
    move-object/from16 v6, v27

    .line 75
    iget v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_52

    const/4 v2, 0x1

    const/4 v7, 0x3

    const/16 v24, 0x3

    goto/16 :goto_1e

    :cond_52
    const/16 v1, 0x10

    if-ne v0, v1, :cond_53

    const/high16 v11, 0x10000000

    goto :goto_b

    :cond_53
    const/16 v1, 0x56

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_a
    move-object/from16 v6, v27

    .line 78
    iget v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    const/4 v11, 0x4

    :cond_54
    :goto_b
    const/4 v2, 0x1

    const/4 v7, 0x3

    goto/16 :goto_1f

    :cond_55
    const/16 v1, 0x5a

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :pswitch_b
    move-object/from16 v6, v27

    goto :goto_c

    :pswitch_c
    move-object/from16 v6, v27

    const-string v2, "application/pgs"

    goto :goto_c

    :pswitch_d
    move-object/from16 v6, v27

    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    goto :goto_c

    :pswitch_e
    move-object/from16 v6, v27

    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    goto :goto_c

    :pswitch_f
    move-object/from16 v6, v27

    const-string/jumbo v2, "video/av01"

    goto :goto_c

    :pswitch_10
    move-object/from16 v6, v27

    const-string v2, "audio/vnd.dts"

    goto :goto_c

    :pswitch_11
    move-object/from16 v6, v27

    const-string v2, "audio/ac3"

    goto :goto_c

    :pswitch_12
    move-object/from16 v6, v27

    .line 81
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 82
    iget-object v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v1

    .line 83
    iget v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    iput v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 84
    iget v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    iput v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 85
    iget-object v1, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    goto :goto_12

    :pswitch_13
    move-object/from16 v6, v27

    const-string v2, "audio/vnd.dts.hd"

    :goto_c
    move-object v4, v2

    :goto_d
    move-object v2, v4

    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x0

    goto :goto_12

    :pswitch_14
    move-object/from16 v6, v27

    .line 86
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "application/vobsub"

    goto :goto_11

    :pswitch_15
    move-object/from16 v6, v27

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v0

    .line 88
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 89
    iget v2, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 90
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v2, "video/avc"

    :goto_f
    move-object v4, v0

    move-object v3, v2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v7, 0x3

    :goto_10
    const/4 v11, -0x1

    goto/16 :goto_24

    :pswitch_16
    move-object/from16 v6, v27

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 91
    iget-object v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "application/dvbsubs"

    :goto_11
    move-object v2, v1

    goto :goto_e

    :goto_12
    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    const/4 v2, 0x1

    const/4 v7, 0x3

    goto/16 :goto_22

    :pswitch_17
    move-object/from16 v6, v27

    .line 93
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 94
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    array-length v3, v0

    const/16 v4, 0x10

    if-gt v4, v3, :cond_56

    const/4 v3, 0x1

    goto :goto_13

    :cond_56
    const/4 v3, 0x0

    .line 96
    :goto_13
    :try_start_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 97
    aget-byte v3, v0, v4

    int-to-long v3, v3

    const-wide/16 v7, 0xff

    and-long/2addr v3, v7

    aget-byte v9, v0, v17

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v11, 0x8

    shl-long/2addr v9, v11

    or-long/2addr v3, v9

    aget-byte v9, v0, v16

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v11, 0x10

    shl-long/2addr v9, v11

    or-long/2addr v3, v9

    const/16 v9, 0x13

    aget-byte v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v7, v9

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/32 v7, 0x58564944

    cmp-long v7, v3, v7

    if-nez v7, :cond_57

    .line 98
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "video/divx"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15

    :cond_57
    const-wide/32 v7, 0x33363248

    cmp-long v7, v3, v7

    if-nez v7, :cond_58

    .line 99
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "video/3gpp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15

    :cond_58
    const-wide/32 v7, 0x31435657

    cmp-long v3, v3, v7

    if-nez v3, :cond_5b

    const/16 v2, 0x28

    .line 100
    :goto_14
    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    if-ge v2, v3, :cond_5a

    .line 101
    aget-byte v3, v0, v2

    if-nez v3, :cond_59

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_59

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_59

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v0, v3

    if-ne v3, v1, :cond_59

    .line 102
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 103
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "video/wvc1"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_15

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_5a
    const-string v0, "Failed to find FourCC VC1 initialization data"

    const/4 v1, 0x0

    .line 104
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5b
    const/4 v1, 0x0

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 105
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :goto_15
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 108
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    const/4 v0, -0x1

    goto :goto_17

    :catch_0
    const-string v0, "Error parsing FourCC private data"

    const/4 v1, 0x0

    .line 109
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :pswitch_18
    move-object/from16 v6, v27

    const-string v0, "audio/mpeg"

    goto :goto_16

    :pswitch_19
    move-object/from16 v6, v27

    const-string v0, "audio/mpeg-L2"

    :goto_16
    move-object v1, v0

    const/16 v0, 0x1000

    const/4 v2, 0x0

    :goto_17
    move-object v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    goto/16 :goto_23

    :pswitch_1a
    move-object/from16 v6, v27

    const/16 v0, 0x2000

    .line 110
    iget-object v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Error parsing vorbis codec private"

    const/4 v3, 0x0

    .line 111
    :try_start_1
    aget-byte v4, v1, v3

    const/4 v3, 0x2

    if-ne v4, v3, :cond_61

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    :goto_18
    aget-byte v5, v1, v3

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_5c

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_5c
    add-int/lit8 v5, v3, 0x1

    .line 113
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    add-int/2addr v4, v3

    const/4 v3, 0x0

    .line 114
    :goto_19
    aget-byte v8, v1, v5

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_5d

    add-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_5d
    add-int/lit8 v8, v5, 0x1

    .line 115
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 116
    aget-byte v5, v1, v8

    const/4 v7, 0x1

    if-ne v5, v7, :cond_60

    .line 117
    new-array v5, v4, [B

    const/4 v7, 0x0

    .line 118
    invoke-static {v1, v8, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v4

    .line 119
    aget-byte v4, v1, v8

    const/4 v7, 0x3

    if-ne v4, v7, :cond_5f

    add-int/2addr v8, v3

    .line 120
    aget-byte v3, v1, v8

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5e

    .line 121
    array-length v3, v1

    sub-int/2addr v3, v8

    new-array v3, v3, [B

    .line 122
    array-length v4, v1

    sub-int/2addr v4, v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "audio/vorbis"

    :goto_1a
    move-object v3, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_5e
    const/4 v0, 0x0

    .line 126
    :try_start_2
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    :cond_5f
    const/4 v0, 0x0

    .line 127
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_60
    const/4 v0, 0x0

    .line 128
    :try_start_3
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 v0, 0x0

    goto :goto_1b

    :cond_61
    const/4 v0, 0x0

    .line 129
    :try_start_4
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 130
    :catch_2
    :goto_1b
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1b
    move-object/from16 v6, v27

    const/4 v7, 0x3

    .line 131
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;-><init>()V

    iput-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    const-string v4, "audio/true-hd"

    const/4 v2, 0x1

    goto/16 :goto_20

    :pswitch_1c
    move-object/from16 v6, v27

    const/4 v7, 0x3

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 133
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_62

    goto :goto_1c

    :cond_62
    const v8, 0xfffe

    if-ne v1, v8, :cond_63

    const/16 v1, 0x18

    .line 134
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v8

    .line 136
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    .line 137
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_63

    .line 138
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    cmp-long v0, v8, v0

    if-nez v0, :cond_63

    :goto_1c
    move v0, v2

    goto :goto_1d

    :cond_63
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_65

    .line 139
    iget v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v0

    if-nez v0, :cond_64

    .line 140
    iget v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v1, 0x4b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported PCM bit depth: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_64
    move/from16 v24, v0

    :goto_1e
    move/from16 v11, v24

    :goto_1f
    const-string v0, "audio/raw"

    move-object v3, v0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_24

    :cond_65
    const-string v0, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    move-object v1, v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_22

    :catch_3
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    .line 144
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1d
    move-object/from16 v6, v27

    const/4 v2, 0x1

    const/4 v7, 0x3

    .line 145
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v0, :cond_66

    const/4 v0, 0x0

    goto :goto_21

    :cond_66
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_21
    const-string/jumbo v1, "video/mp4v-es"

    move-object v3, v0

    const/4 v0, 0x0

    :goto_22
    move-object v4, v3

    move-object v3, v0

    const/4 v0, -0x1

    :goto_23
    const/4 v11, -0x1

    move-object/from16 v28, v3

    move-object v3, v1

    move-object v1, v4

    move-object/from16 v4, v28

    .line 146
    :goto_24
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v5, :cond_67

    .line 147
    new-instance v8, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v8, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 148
    invoke-static {v8}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v5

    if-eqz v5, :cond_67

    .line 149
    iget-object v4, v5, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v3, "video/dolby-vision"

    .line 150
    :cond_67
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    const/4 v8, 0x0

    or-int/2addr v5, v8

    .line 151
    iget-boolean v8, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v8, :cond_68

    const/4 v8, 0x2

    goto :goto_25

    :cond_68
    const/4 v8, 0x0

    :goto_25
    or-int/2addr v5, v8

    .line 152
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 153
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 154
    iget v7, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 155
    iput v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 156
    iget v7, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 157
    iput v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 158
    iput v11, v8, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    goto/16 :goto_2d

    .line 159
    :cond_69
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 160
    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v2, :cond_6c

    .line 161
    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_6a

    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_6a
    iput v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 162
    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v2, v7, :cond_6b

    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_6b
    iput v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_26

    :cond_6c
    const/4 v7, -0x1

    :goto_26
    const/high16 v2, -0x40800000    # -1.0f

    .line 163
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v9, v7, :cond_6d

    iget v10, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v10, v7, :cond_6d

    .line 164
    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int/2addr v2, v9

    int-to-float v2, v2

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v2, v9

    .line 165
    :cond_6d
    iget-boolean v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v9, :cond_70

    .line 166
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6f

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6e

    goto/16 :goto_27

    :cond_6e
    const/16 v9, 0x19

    new-array v9, v9, [B

    .line 167
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v11, 0x0

    .line 168
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v12, 0x47435000    # 50000.0f

    mul-float/2addr v11, v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 171
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 177
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_28

    :cond_6f
    :goto_27
    const/4 v9, 0x0

    .line 181
    :goto_28
    new-instance v10, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v12, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v13, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    goto :goto_29

    :cond_70
    const/4 v10, 0x0

    .line 182
    :goto_29
    iget-object v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v9, :cond_71

    .line 183
    sget-object v11, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    .line 184
    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_71

    .line 185
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 186
    :cond_71
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v9, :cond_76

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v11, 0x0

    .line 187
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_76

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 188
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_76

    .line 189
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_72

    const/4 v7, 0x0

    goto :goto_2b

    .line 190
    :cond_72
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_73

    const/16 v7, 0x5a

    goto :goto_2b

    .line 191
    :cond_73
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-eqz v9, :cond_75

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, 0x43340000    # 180.0f

    .line 192
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_74

    goto :goto_2a

    .line 193
    :cond_74
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_76

    const/16 v7, 0x10e

    goto :goto_2b

    :cond_75
    :goto_2a
    const/16 v7, 0xb4

    .line 194
    :cond_76
    :goto_2b
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 195
    iput v9, v8, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 196
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 197
    iput v9, v8, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 198
    iput v2, v8, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 199
    iput v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 200
    iget-object v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 201
    iput-object v2, v8, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 202
    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 203
    iput v2, v8, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 204
    iput-object v10, v8, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v2, 0x2

    goto :goto_2d

    :cond_77
    const-string v2, "application/x-subrip"

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string/jumbo v2, "text/x-ssa"

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "application/vobsub"

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "application/pgs"

    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "application/dvbsubs"

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_2c

    :cond_78
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    .line 210
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_79
    :goto_2c
    move v2, v7

    .line 211
    :goto_2d
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v7, :cond_7a

    .line 212
    sget-object v9, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    .line 213
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 214
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 215
    iput-object v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    :cond_7a
    move/from16 v7, v25

    .line 216
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 217
    iput-object v3, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 218
    iput v0, v8, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 219
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 220
    iput-object v0, v8, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 221
    iput v5, v8, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 222
    iput-object v1, v8, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 223
    iput-object v4, v8, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 224
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 225
    iput-object v0, v8, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 226
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 227
    iget v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v3, v18

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 228
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    move-object/from16 v1, v19

    .line 229
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v2, v6, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2e

    :cond_7b
    move-object/from16 v1, v19

    :goto_2e
    const/4 v2, 0x0

    .line 230
    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_31

    :cond_7c
    move-object v2, v5

    const-string v0, "CodecId is missing in TrackEntry element"

    .line 231
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_7d
    move-object v1, v7

    .line 232
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7e

    goto :goto_31

    :cond_7e
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 233
    :goto_2f
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v2, v3, :cond_7f

    .line 234
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 235
    :cond_7f
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 236
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 237
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 238
    :goto_30
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v8, v2, :cond_81

    .line 239
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v4, v8

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 240
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    if-nez v8, :cond_80

    .line 241
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v5, :cond_80

    or-int/lit8 v4, v4, 0x1

    .line 242
    :cond_80
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v5, v5, v8

    sub-int v9, v0, v5

    move-object v0, v1

    move-object v10, v1

    move-object v1, v7

    move v6, v9

    .line 243
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v8, v8, 0x1

    move v0, v9

    move-object v1, v10

    goto :goto_30

    :cond_81
    move-object v10, v1

    const/4 v0, 0x0

    .line 244
    iput v0, v10, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    :cond_82
    :goto_31
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1f
        -0x7ce7f3b0 -> :sswitch_1e
        -0x76567dc0 -> :sswitch_1d
        -0x6a615338 -> :sswitch_1c
        -0x672350af -> :sswitch_1b
        -0x585f4fce -> :sswitch_1a
        -0x585f4fcd -> :sswitch_19
        -0x51dc40b2 -> :sswitch_18
        -0x37a9c464 -> :sswitch_17
        -0x2016c535 -> :sswitch_16
        -0x2016c4e5 -> :sswitch_15
        -0x19552dbd -> :sswitch_14
        -0x1538b2ba -> :sswitch_13
        0x3c02325 -> :sswitch_12
        0x3c02353 -> :sswitch_11
        0x3c030c5 -> :sswitch_10
        0x4e81333 -> :sswitch_f
        0x4e86155 -> :sswitch_e
        0x4e86156 -> :sswitch_d
        0x5e8da3e -> :sswitch_c
        0x1a8350d6 -> :sswitch_b
        0x2056f406 -> :sswitch_a
        0x25e26ee2 -> :sswitch_9
        0x2b45174d -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_3f
        -0x7ce7f3b0 -> :sswitch_3e
        -0x76567dc0 -> :sswitch_3d
        -0x6a615338 -> :sswitch_3c
        -0x672350af -> :sswitch_3b
        -0x585f4fce -> :sswitch_3a
        -0x585f4fcd -> :sswitch_39
        -0x51dc40b2 -> :sswitch_38
        -0x37a9c464 -> :sswitch_37
        -0x2016c535 -> :sswitch_36
        -0x2016c4e5 -> :sswitch_35
        -0x19552dbd -> :sswitch_34
        -0x1538b2ba -> :sswitch_33
        0x3c02325 -> :sswitch_32
        0x3c02353 -> :sswitch_31
        0x3c030c5 -> :sswitch_30
        0x4e81333 -> :sswitch_2f
        0x4e86155 -> :sswitch_2e
        0x4e86156 -> :sswitch_2d
        0x5e8da3e -> :sswitch_2c
        0x1a8350d6 -> :sswitch_2b
        0x2056f406 -> :sswitch_2a
        0x25e26ee2 -> :sswitch_29
        0x2b45174d -> :sswitch_28
        0x2b453ce4 -> :sswitch_27
        0x2c0618eb -> :sswitch_26
        0x32fdf009 -> :sswitch_25
        0x54c61e47 -> :sswitch_24
        0x6bd6c624 -> :sswitch_23
        0x7446132a -> :sswitch_22
        0x7446b0a6 -> :sswitch_21
        0x744ad97d -> :sswitch_20
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
