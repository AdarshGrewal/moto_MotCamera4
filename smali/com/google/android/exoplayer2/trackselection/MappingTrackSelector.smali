.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 52
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererCapabilities",
            "trackGroups",
            "periodId",
            "timeline"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v14, 0x0

    move v7, v14

    :goto_0
    if-ge v7, v4, :cond_0

    .line 4
    iget v8, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v9, v8, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v9, v5, v7

    .line 5
    new-array v8, v8, [[I

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v4, v0

    new-array v15, v4, [I

    move v7, v14

    :goto_1
    if-ge v7, v4, :cond_1

    .line 7
    aget-object v8, v0, v7

    invoke-interface {v8}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v8

    aput v8, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v4, v14

    .line 8
    :goto_2
    iget v7, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v7, :cond_a

    .line 9
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v7, v7, v4

    .line 10
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v8, v8, v14

    .line 11
    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    move v8, v14

    .line 12
    :goto_3
    array-length v9, v0

    move v12, v3

    move v10, v14

    move v11, v10

    .line 13
    :goto_4
    array-length v14, v0

    if-ge v10, v14, :cond_7

    .line 14
    aget-object v14, v0, v10

    const/4 v3, 0x0

    const/16 v16, 0x0

    .line 15
    :goto_5
    iget v13, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v13, :cond_3

    .line 16
    iget-object v13, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v13, v13, v3

    .line 17
    invoke-interface {v14, v13}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v13

    const/16 v17, 0x7

    and-int/lit8 v13, v13, 0x7

    move/from16 v1, v16

    .line 18
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p2

    goto :goto_5

    :cond_3
    move/from16 v1, v16

    const/16 v17, 0x7

    .line 19
    aget v3, v2, v10

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    :goto_6
    if-gt v1, v11, :cond_5

    if-ne v1, v11, :cond_6

    if-eqz v8, :cond_6

    if-nez v12, :cond_6

    if-eqz v3, :cond_6

    :cond_5
    move v11, v1

    move v12, v3

    move v9, v10

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    goto :goto_4

    .line 20
    :cond_7
    array-length v1, v0

    if-ne v9, v1, :cond_8

    .line 21
    iget v1, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v1, v1, [I

    goto :goto_8

    .line 22
    :cond_8
    aget-object v1, v0, v9

    .line 23
    iget v3, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [I

    const/4 v8, 0x0

    .line 24
    :goto_7
    iget v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v10, :cond_9

    .line 25
    iget-object v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v10, v10, v8

    .line 26
    invoke-interface {v1, v10}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v10

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    .line 27
    :goto_8
    aget v3, v2, v9

    .line 28
    aget-object v8, v5, v9

    aput-object v7, v8, v3

    .line 29
    aget-object v7, v6, v9

    aput-object v1, v7, v3

    .line 30
    aget v1, v2, v9

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aput v1, v2, v9

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v17, 0x7

    .line 31
    array-length v1, v0

    new-array v10, v1, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 32
    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    .line 33
    array-length v1, v0

    new-array v9, v1, [I

    const/4 v1, 0x0

    .line 34
    :goto_9
    array-length v3, v0

    if-ge v1, v3, :cond_b

    .line 35
    aget v3, v2, v1

    .line 36
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v7, v5, v1

    .line 37
    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v4, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v4, v10, v1

    .line 38
    aget-object v4, v6, v1

    .line 39
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    aput-object v3, v6, v1

    .line 40
    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    .line 41
    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v3

    aput v3, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 42
    :cond_b
    array-length v1, v0

    aget v1, v2, v1

    .line 43
    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 44
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v13, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v7, v0

    move-object v11, v15

    move-object v12, v6

    move/from16 v1, v17

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 46
    move-object/from16 v2, p0

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 47
    iget-object v3, v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 48
    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    .line 49
    new-array v5, v4, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-object v10, v0

    move-object v11, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_a
    const/4 v12, 0x2

    if-ge v7, v4, :cond_27

    .line 50
    iget-object v1, v10, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v1, v1, v7

    if-ne v12, v1, :cond_26

    if-nez v9, :cond_24

    .line 51
    iget-object v1, v10, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v7

    .line 52
    aget-object v9, v6, v7

    aget v10, v15, v7

    .line 53
    iget-boolean v14, v11, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-nez v14, :cond_1a

    iget-boolean v14, v11, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceLowestBitrate:Z

    if-nez v14, :cond_1a

    .line 54
    iget-boolean v14, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz v14, :cond_c

    const/16 v14, 0x18

    goto :goto_b

    :cond_c
    const/16 v14, 0x10

    .line 55
    :goto_b
    iget-boolean v13, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-eqz v13, :cond_d

    and-int/2addr v10, v14

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    :goto_c
    move-object v13, v11

    const/4 v11, 0x0

    .line 56
    :goto_d
    iget v12, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v11, v12, :cond_1a

    .line 57
    iget-object v12, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v12, v12, v11

    .line 58
    aget-object v16, v9, v11

    move-object/from16 v30, v2

    iget v2, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoWidth:I

    move-object/from16 v31, v15

    iget v15, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoHeight:I

    move-object/from16 v32, v6

    iget v6, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoFrameRate:I

    move/from16 v33, v4

    iget v4, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoBitrate:I

    move/from16 v34, v8

    iget v8, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoWidth:I

    move-object/from16 v35, v0

    iget v0, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoHeight:I

    move-object/from16 v36, v5

    iget v5, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoFrameRate:I

    move/from16 v37, v7

    iget v7, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoBitrate:I

    move-object/from16 v38, v9

    iget v9, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportWidth:I

    move-object/from16 v39, v3

    iget v3, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportHeight:I

    iget-boolean v13, v13, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportOrientationMayChange:Z

    move-object/from16 v40, v1

    .line 59
    iget v1, v12, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v41, v11

    const/4 v11, 0x2

    if-ge v1, v11, :cond_e

    .line 60
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_e

    .line 61
    :cond_e
    invoke-static {v12, v9, v3, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v1

    .line 62
    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v11, :cond_f

    .line 63
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    :goto_e
    move/from16 v42, v10

    goto/16 :goto_14

    :cond_f
    if-nez v10, :cond_15

    .line 64
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move/from16 v42, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v43, 0x0

    .line 65
    :goto_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_14

    .line 66
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v44, v1

    .line 67
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v11

    .line 68
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 69
    invoke-virtual {v9, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    move-object/from16 v45, v9

    move/from16 v46, v13

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 70
    :goto_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_11

    .line 71
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v47, v3

    .line 72
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v18, v3, v13

    .line 73
    aget v20, v16, v13

    move-object/from16 v19, v1

    move/from16 v21, v14

    move/from16 v22, v2

    move/from16 v23, v15

    move/from16 v24, v6

    move/from16 v25, v4

    move/from16 v26, v8

    move/from16 v27, v0

    move/from16 v28, v5

    move/from16 v29, v7

    .line 74
    invoke-static/range {v18 .. v29}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z

    move-result v3

    if-eqz v3, :cond_10

    add-int/lit8 v9, v9, 0x1

    :cond_10
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v47

    goto :goto_10

    :cond_11
    move-object/from16 v47, v3

    if-le v9, v10, :cond_13

    move-object/from16 v43, v1

    move v10, v9

    goto :goto_11

    :cond_12
    move-object/from16 v47, v3

    move-object/from16 v45, v9

    move/from16 v46, v13

    :cond_13
    :goto_11
    add-int/lit8 v13, v46, 0x1

    move-object/from16 v1, v44

    move-object/from16 v9, v45

    move-object/from16 v3, v47

    goto :goto_f

    :cond_14
    move-object/from16 v44, v1

    move-object/from16 v47, v3

    goto :goto_12

    :cond_15
    move-object/from16 v44, v1

    move-object/from16 v47, v3

    move/from16 v42, v10

    const/16 v43, 0x0

    .line 75
    :goto_12
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_13
    const/4 v3, -0x1

    add-int/2addr v1, v3

    if-ltz v1, :cond_17

    move-object/from16 v3, v47

    .line 76
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 77
    iget-object v10, v12, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v18, v10, v9

    .line 78
    aget v20, v16, v9

    move-object/from16 v19, v43

    move/from16 v21, v14

    move/from16 v22, v2

    move/from16 v23, v15

    move/from16 v24, v6

    move/from16 v25, v4

    move/from16 v26, v8

    move/from16 v27, v0

    move/from16 v28, v5

    move/from16 v29, v7

    .line 79
    invoke-static/range {v18 .. v29}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z

    move-result v9

    if-nez v9, :cond_16

    .line 80
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_16
    move-object/from16 v47, v3

    goto :goto_13

    :cond_17
    move-object/from16 v3, v47

    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_14

    :cond_18
    invoke-static/range {v44 .. v44}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    .line 82
    :goto_14
    array-length v1, v0

    if-lez v1, :cond_19

    .line 83
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    invoke-direct {v1, v12, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    goto :goto_15

    :cond_19
    add-int/lit8 v11, v41, 0x1

    move-object/from16 v2, v30

    move-object/from16 v15, v31

    move-object/from16 v6, v32

    move/from16 v4, v33

    move/from16 v8, v34

    move-object/from16 v0, v35

    move-object/from16 v5, v36

    move/from16 v7, v37

    move-object/from16 v9, v38

    move-object/from16 v3, v39

    move-object v13, v3

    move-object/from16 v1, v40

    move/from16 v10, v42

    goto/16 :goto_d

    :cond_1a
    move-object/from16 v35, v0

    move-object/from16 v40, v1

    move-object/from16 v30, v2

    move-object/from16 v39, v3

    move/from16 v33, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v6

    move/from16 v37, v7

    move/from16 v34, v8

    move-object/from16 v38, v9

    move-object/from16 v31, v15

    const/4 v1, 0x0

    :goto_15
    if-nez v1, :cond_22

    move-object/from16 v3, v40

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v13, -0x1

    .line 84
    :goto_16
    iget v4, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v4, :cond_20

    .line 85
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v4, v4, v2

    move-object/from16 v5, v39

    .line 86
    iget v6, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportWidth:I

    iget v7, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportHeight:I

    iget-boolean v8, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportOrientationMayChange:Z

    .line 87
    invoke-static {v4, v6, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v6

    .line 88
    aget-object v7, v38, v2

    move-object v8, v1

    move-object v1, v0

    const/4 v0, 0x0

    .line 89
    :goto_17
    iget v9, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v9, :cond_1f

    .line 90
    iget-object v9, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v9, v9, v0

    .line 91
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_1b

    goto :goto_18

    .line 92
    :cond_1b
    aget v10, v7, v0

    iget-boolean v11, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 93
    new-instance v10, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;

    aget v11, v7, v0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v14, v6

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-direct {v10, v9, v5, v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IZ)V

    .line 95
    iget-boolean v9, v10, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;->isWithinMaxConstraints:Z

    if-nez v9, :cond_1c

    iget-boolean v9, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v9, :cond_1c

    goto :goto_18

    :cond_1c
    if-eqz v8, :cond_1d

    .line 96
    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackScore;)I

    move-result v9

    if-lez v9, :cond_1e

    :cond_1d
    move v13, v0

    move-object v1, v4

    move-object v8, v10

    :cond_1e
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    move-object/from16 v39, v5

    move-object v1, v8

    goto :goto_16

    :cond_20
    move-object/from16 v5, v39

    if-nez v0, :cond_21

    const/4 v14, 0x0

    goto :goto_19

    .line 97
    :cond_21
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    aput v13, v2, v1

    invoke-direct {v14, v0, v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_19
    move-object v1, v14

    goto :goto_1a

    :cond_22
    move-object/from16 v5, v39

    .line 98
    :goto_1a
    aput-object v1, v36, v37

    .line 99
    aget-object v0, v36, v37

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_1b

    :cond_23
    const/4 v0, 0x0

    :goto_1b
    move v9, v0

    move-object v11, v5

    move-object/from16 v0, v35

    goto :goto_1c

    :cond_24
    move-object/from16 v30, v2

    move/from16 v33, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v6

    move/from16 v37, v7

    move/from16 v34, v8

    move-object/from16 v31, v15

    move-object v5, v3

    .line 100
    :goto_1c
    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v37

    .line 101
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_1d

    :cond_25
    const/4 v1, 0x0

    :goto_1d
    or-int v1, v34, v1

    move-object v10, v0

    move v8, v1

    goto :goto_1e

    :cond_26
    move-object/from16 v30, v2

    move/from16 v33, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v6

    move/from16 v37, v7

    move/from16 v34, v8

    move-object/from16 v31, v15

    move-object v5, v3

    :goto_1e
    add-int/lit8 v7, v37, 0x1

    move-object v3, v5

    move-object/from16 v2, v30

    move-object/from16 v15, v31

    move-object/from16 v6, v32

    move/from16 v4, v33

    move-object/from16 v5, v36

    const/4 v1, 0x7

    goto/16 :goto_a

    :cond_27
    move-object/from16 v30, v2

    move-object/from16 v36, v5

    move-object/from16 v32, v6

    move/from16 v34, v8

    move-object/from16 v31, v15

    move-object v5, v3

    move v6, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v6, :cond_3f

    .line 102
    iget-object v7, v10, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v7, v7, v4

    const/4 v8, 0x1

    if-ne v8, v7, :cond_3d

    .line 103
    iget-boolean v7, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-nez v7, :cond_29

    if-nez v34, :cond_28

    goto :goto_20

    :cond_28
    const/4 v7, 0x0

    goto :goto_21

    :cond_29
    :goto_20
    const/4 v7, 0x1

    .line 104
    :goto_21
    iget-object v8, v10, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, v4

    .line 105
    aget-object v9, v32, v4

    aget v10, v31, v4

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 106
    :goto_22
    iget v15, v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v14, v15, :cond_2f

    .line 107
    iget-object v15, v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v15, v15, v14

    .line 108
    aget-object v16, v9, v14

    move/from16 v19, v12

    move/from16 v18, v13

    move-object v12, v10

    const/4 v10, 0x0

    .line 109
    :goto_23
    iget v13, v15, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v10, v13, :cond_2e

    .line 110
    aget v13, v16, v10

    move-object/from16 v20, v1

    iget-boolean v1, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v13, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 111
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v10

    .line 112
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    move-object/from16 v21, v15

    aget v15, v16, v10

    invoke-direct {v13, v1, v11, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 113
    iget-boolean v1, v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-nez v1, :cond_2a

    iget-boolean v1, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-nez v1, :cond_2a

    goto :goto_24

    :cond_2a
    if-eqz v12, :cond_2b

    .line 114
    invoke-virtual {v13, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v1

    if-lez v1, :cond_2d

    :cond_2b
    move/from16 v18, v10

    move-object v12, v13

    move/from16 v19, v14

    goto :goto_24

    :cond_2c
    move-object/from16 v21, v15

    :cond_2d
    :goto_24
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v20

    move-object/from16 v15, v21

    goto :goto_23

    :cond_2e
    move-object/from16 v20, v1

    add-int/lit8 v14, v14, 0x1

    move-object v10, v12

    move/from16 v13, v18

    move/from16 v12, v19

    goto :goto_22

    :cond_2f
    move-object/from16 v20, v1

    const/4 v1, -0x1

    if-ne v12, v1, :cond_30

    move-object/from16 v35, v0

    move/from16 v16, v4

    move-object/from16 v39, v5

    move/from16 v33, v6

    const/4 v0, 0x0

    goto/16 :goto_29

    .line 115
    :cond_30
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, v1, v12

    .line 116
    iget-boolean v8, v11, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-nez v8, :cond_38

    iget-boolean v8, v11, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceLowestBitrate:Z

    if-nez v8, :cond_38

    if-eqz v7, :cond_38

    .line 117
    aget-object v7, v9, v12

    iget v8, v11, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxAudioBitrate:I

    iget-boolean v9, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v12, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v11, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 118
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v14, v14, v13

    .line 119
    iget v15, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v15, v15, [I

    move-object/from16 v35, v0

    move-object/from16 v39, v5

    move/from16 v33, v6

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 120
    :goto_25
    iget v6, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_37

    if-eq v5, v13, :cond_35

    .line 121
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v5

    move/from16 v16, v4

    .line 122
    aget v4, v7, v5

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .line 123
    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v4

    if-eqz v4, :cond_34

    iget v4, v6, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_34

    if-gt v4, v8, :cond_34

    if-nez v11, :cond_31

    iget v4, v6, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v4, v7, :cond_34

    iget v7, v14, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v4, v7, :cond_34

    :cond_31
    if-nez v9, :cond_32

    iget-object v4, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v4, :cond_34

    iget-object v7, v14, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 124
    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_32
    if-nez v12, :cond_33

    iget v4, v6, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_34

    iget v6, v14, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v4, v6, :cond_34

    :cond_33
    const/4 v4, 0x1

    goto :goto_26

    :cond_34
    const/4 v4, 0x0

    :goto_26
    if-eqz v4, :cond_36

    goto :goto_27

    :cond_35
    move/from16 v16, v4

    move-object/from16 v18, v7

    :goto_27
    add-int/lit8 v4, v0, 0x1

    .line 125
    aput v5, v15, v0

    move v0, v4

    :cond_36
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    move-object/from16 v7, v18

    goto :goto_25

    :cond_37
    move/from16 v16, v4

    .line 126
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 127
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_39

    .line 128
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    invoke-direct {v4, v1, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    goto :goto_28

    :cond_38
    move-object/from16 v35, v0

    move/from16 v16, v4

    move-object/from16 v39, v5

    move/from16 v33, v6

    :cond_39
    const/4 v4, 0x0

    :goto_28
    if-nez v4, :cond_3a

    .line 129
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput v13, v5, v0

    invoke-direct {v4, v1, v5}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 130
    :cond_3a
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v4, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_29
    if-eqz v0, :cond_3e

    if-eqz v2, :cond_3b

    .line 132
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v1

    if-lez v1, :cond_3e

    :cond_3b
    const/4 v1, -0x1

    if-eq v3, v1, :cond_3c

    const/4 v1, 0x0

    .line 134
    aput-object v1, v36, v3

    .line 135
    :cond_3c
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 136
    aput-object v1, v36, v16

    .line 137
    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 138
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v2, v1

    .line 139
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 140
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    move-object v2, v0

    move/from16 v3, v16

    goto :goto_2a

    :cond_3d
    move-object/from16 v35, v0

    move-object/from16 v20, v1

    move/from16 v16, v4

    move-object/from16 v39, v5

    move/from16 v33, v6

    :cond_3e
    move-object/from16 v1, v20

    :goto_2a
    add-int/lit8 v4, v16, 0x1

    move/from16 v6, v33

    move-object/from16 v0, v35

    move-object v10, v0

    move-object/from16 v5, v39

    move-object v11, v5

    goto/16 :goto_1f

    :cond_3f
    move-object/from16 v35, v0

    move-object/from16 v20, v1

    move-object/from16 v39, v5

    move v2, v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    :goto_2b
    if-ge v1, v2, :cond_51

    move-object/from16 v4, v35

    .line 141
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v5, v5, v1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4f

    const/4 v6, 0x3

    if-eq v5, v6, :cond_46

    .line 142
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v5, v5, v1

    .line 143
    aget-object v6, v32, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 144
    :goto_2c
    iget v11, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v9, v11, :cond_44

    .line 145
    iget-object v11, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v11, v11, v9

    .line 146
    aget-object v12, v6, v9

    move v13, v10

    move-object v10, v8

    move-object v8, v7

    const/4 v7, 0x0

    .line 147
    :goto_2d
    iget v14, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v14, :cond_43

    .line 148
    aget v14, v12, v7

    move-object/from16 v16, v5

    move-object/from16 v15, v39

    iget-boolean v5, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v14, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 149
    iget-object v5, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v5, v7

    .line 150
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;

    move-object/from16 v18, v6

    aget v6, v12, v7

    invoke-direct {v14, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;I)V

    if-eqz v10, :cond_40

    .line 151
    invoke-virtual {v14, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v5

    if-lez v5, :cond_42

    :cond_40
    move v13, v7

    move-object v8, v11

    move-object v10, v14

    goto :goto_2e

    :cond_41
    move-object/from16 v18, v6

    :cond_42
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v39, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    goto :goto_2d

    :cond_43
    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v15, v39

    add-int/lit8 v9, v9, 0x1

    move-object v7, v8

    move-object v8, v10

    move v10, v13

    goto :goto_2c

    :cond_44
    move-object/from16 v15, v39

    if-nez v7, :cond_45

    const/4 v5, 0x0

    goto :goto_2f

    .line 152
    :cond_45
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v6, 0x1

    new-array v8, v6, [I

    const/4 v6, 0x0

    aput v10, v8, v6

    invoke-direct {v5, v7, v8}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 153
    :goto_2f
    aput-object v5, v36, v1

    move-object/from16 v11, v20

    goto/16 :goto_34

    :cond_46
    move-object/from16 v15, v39

    .line 154
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v5, v5, v1

    .line 155
    aget-object v6, v32, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 156
    :goto_30
    iget v11, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v10, v11, :cond_4b

    .line 157
    iget-object v11, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v11, v11, v10

    .line 158
    aget-object v12, v6, v10

    move v13, v9

    move-object v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    .line 159
    :goto_31
    iget v14, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v14, :cond_4a

    .line 160
    aget v14, v12, v7

    move-object/from16 v16, v5

    iget-boolean v5, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v14, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 161
    iget-object v5, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v5, v7

    .line 162
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    move-object/from16 v18, v6

    aget v6, v12, v7

    move-object/from16 v19, v11

    move-object/from16 v11, v20

    invoke-direct {v14, v5, v15, v6, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    .line 163
    iget-boolean v5, v14, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinConstraints:Z

    if-eqz v5, :cond_49

    if-eqz v9, :cond_47

    .line 164
    invoke-virtual {v14, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I

    move-result v5

    if-lez v5, :cond_49

    :cond_47
    move v13, v7

    move-object v9, v14

    move-object/from16 v8, v19

    goto :goto_32

    :cond_48
    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move-object/from16 v11, v20

    :cond_49
    :goto_32
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v20, v11

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v11, v19

    goto :goto_31

    :cond_4a
    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v11, v20

    add-int/lit8 v10, v10, 0x1

    move-object v7, v8

    move-object v8, v9

    move v9, v13

    goto :goto_30

    :cond_4b
    move-object/from16 v11, v20

    if-nez v7, :cond_4c

    const/4 v5, 0x0

    goto :goto_33

    .line 165
    :cond_4c
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v6, 0x1

    new-array v10, v6, [I

    const/4 v6, 0x0

    aput v9, v10, v6

    invoke-direct {v5, v7, v10}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 166
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    :goto_33
    if-eqz v5, :cond_50

    if-eqz v0, :cond_4d

    .line 168
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    .line 169
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I

    move-result v6

    if-lez v6, :cond_50

    :cond_4d
    const/4 v0, -0x1

    if-eq v3, v0, :cond_4e

    const/4 v0, 0x0

    .line 170
    aput-object v0, v36, v3

    .line 171
    :cond_4e
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v0, v36, v1

    .line 172
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    move v3, v1

    goto :goto_34

    :cond_4f
    move-object/from16 v11, v20

    move-object/from16 v15, v39

    :cond_50
    :goto_34
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v35, v4

    move-object/from16 v20, v11

    move-object/from16 v39, v15

    goto/16 :goto_2b

    :cond_51
    move-object/from16 v4, v35

    move-object/from16 v15, v39

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v2, :cond_57

    .line 173
    iget-object v1, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    .line 174
    aput-object v1, v36, v0

    goto :goto_39

    .line 175
    :cond_52
    iget-object v1, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v0

    .line 176
    iget-object v3, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 177
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_53

    .line 178
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_36

    :cond_53
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_56

    .line 179
    iget-object v3, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 180
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_54

    .line 181
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_37

    :cond_54
    const/4 v3, 0x0

    :goto_37
    if-nez v3, :cond_55

    const/4 v1, 0x0

    goto :goto_38

    .line 182
    :cond_55
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget v6, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 183
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, v1, v6

    .line 184
    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v5, v1, v6, v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    move-object v1, v5

    :goto_38
    aput-object v1, v36, v0

    :cond_56
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_57
    move-object/from16 v0, v30

    .line 185
    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 186
    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 187
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    check-cast v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3a
    const-wide/16 v5, 0x0

    if-ge v3, v2, :cond_59

    .line 190
    aget-object v7, v36, v3

    if-eqz v7, :cond_58

    aget-object v7, v36, v3

    iget-object v7, v7, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_58

    .line 191
    sget-object v7, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 192
    new-instance v7, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v7}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 193
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v8, v5, v6, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 194
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_3b

    :cond_58
    const/4 v7, 0x0

    .line 195
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_59
    const/4 v7, 0x0

    .line 196
    new-array v3, v2, [[J

    const/4 v8, 0x0

    :goto_3c
    if-ge v8, v2, :cond_5c

    .line 197
    aget-object v9, v36, v8

    if-nez v9, :cond_5a

    const/4 v10, 0x0

    new-array v9, v10, [J

    .line 198
    aput-object v9, v3, v8

    goto :goto_3e

    .line 199
    :cond_5a
    iget-object v10, v9, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v10, v10

    new-array v10, v10, [J

    aput-object v10, v3, v8

    const/4 v10, 0x0

    .line 200
    :goto_3d
    iget-object v11, v9, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v12, v11

    if-ge v10, v12, :cond_5b

    .line 201
    aget-object v12, v3, v8

    iget-object v13, v9, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget v11, v11, v10

    .line 202
    iget-object v13, v13, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v11, v13, v11

    .line 203
    iget v11, v11, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v13, v11

    aput-wide v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 204
    :cond_5b
    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    :goto_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 205
    :cond_5c
    new-array v8, v2, [I

    .line 206
    new-array v9, v2, [J

    const/4 v10, 0x0

    :goto_3f
    if-ge v10, v2, :cond_5e

    .line 207
    aget-object v11, v3, v10

    array-length v11, v11

    if-nez v11, :cond_5d

    move-wide v13, v5

    goto :goto_40

    :cond_5d
    aget-object v11, v3, v10

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    :goto_40
    aput-wide v13, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    .line 208
    :cond_5e
    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 209
    sget-object v5, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    const-string v6, "expectedValuesPerKey"

    const/4 v10, 0x2

    .line 210
    invoke-static {v10, v6}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 211
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 212
    new-instance v5, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    invoke-direct {v5, v10}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 213
    new-instance v10, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v10, v6, v5}, Lcom/google/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v2, :cond_64

    .line 214
    aget-object v6, v3, v5

    array-length v6, v6

    const/4 v11, 0x1

    if-gt v6, v11, :cond_5f

    goto :goto_46

    .line 215
    :cond_5f
    aget-object v6, v3, v5

    array-length v6, v6

    new-array v11, v6, [D

    const/4 v12, 0x0

    .line 216
    :goto_42
    aget-object v13, v3, v5

    array-length v13, v13

    const-wide/16 v18, 0x0

    if-ge v12, v13, :cond_61

    .line 217
    aget-object v13, v3, v5

    aget-wide v13, v13, v12

    const-wide/16 v20, -0x1

    cmp-long v13, v13, v20

    if-nez v13, :cond_60

    goto :goto_43

    :cond_60
    aget-object v13, v3, v5

    aget-wide v13, v13, v12

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    :goto_43
    aput-wide v18, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_42

    :cond_61
    add-int/lit8 v6, v6, -0x1

    .line 218
    aget-wide v12, v11, v6

    const/4 v14, 0x0

    aget-wide v20, v11, v14

    sub-double v12, v12, v20

    const/4 v14, 0x0

    :goto_44
    if-ge v14, v6, :cond_63

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    .line 219
    aget-wide v22, v11, v14

    add-int/lit8 v14, v14, 0x1

    aget-wide v24, v11, v14

    add-double v22, v22, v24

    mul-double v22, v22, v20

    cmpl-double v16, v12, v18

    if-nez v16, :cond_62

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    goto :goto_45

    :cond_62
    const/16 v16, 0x0

    .line 220
    aget-wide v20, v11, v16

    sub-double v22, v22, v20

    div-double v20, v22, v12

    .line 221
    :goto_45
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move/from16 v16, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v7, v6}, Lcom/google/common/collect/AbstractListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move/from16 v6, v16

    const/4 v7, 0x0

    goto :goto_44

    :cond_63
    :goto_46
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto :goto_41

    .line 222
    :cond_64
    iget-object v5, v10, Lcom/google/common/collect/AbstractMultimap;->values:Ljava/util/Collection;

    if-nez v5, :cond_65

    .line 223
    new-instance v5, Lcom/google/common/collect/AbstractMultimap$Values;

    invoke-direct {v5, v10}, Lcom/google/common/collect/AbstractMultimap$Values;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    .line 224
    iput-object v5, v10, Lcom/google/common/collect/AbstractMultimap;->values:Ljava/util/Collection;

    .line 225
    :cond_65
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    .line 226
    :goto_47
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-ge v6, v7, :cond_66

    .line 227
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 228
    aget v10, v8, v7

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v8, v7

    .line 229
    aget-object v11, v3, v7

    aget-wide v10, v11, v10

    aput-wide v10, v9, v7

    .line 230
    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_66
    const/4 v3, 0x0

    :goto_48
    if-ge v3, v2, :cond_68

    .line 231
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_67

    .line 232
    aget-wide v5, v9, v3

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    aput-wide v5, v9, v3

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 233
    :cond_68
    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    const/4 v3, 0x4

    const-string v5, "initialCapacity"

    .line 234
    invoke-static {v3, v5}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    new-array v3, v3, [Ljava/lang/Object;

    move-object v6, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 235
    :goto_49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_6b

    .line 236
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v7, :cond_69

    .line 237
    sget-object v7, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    goto :goto_4a

    .line 238
    :cond_69
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 239
    :goto_4a
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    .line 240
    array-length v9, v6

    if-ge v9, v8, :cond_6a

    .line 241
    array-length v9, v6

    .line 242
    invoke-static {v9, v8}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v9

    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 243
    :cond_6a
    aput-object v7, v6, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_49

    .line 244
    :cond_6b
    invoke-static {v6, v5}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 245
    new-array v3, v2, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 v5, 0x0

    :goto_4b
    if-ge v5, v2, :cond_6f

    .line 246
    aget-object v6, v36, v5

    if-eqz v6, :cond_6e

    .line 247
    iget-object v7, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v8, v7

    if-nez v8, :cond_6c

    goto :goto_4d

    .line 248
    :cond_6c
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6d

    .line 249
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v9, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v10, 0x0

    aget v7, v7, v10

    iget v6, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v8, v9, v7, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    goto :goto_4c

    :cond_6d
    const/4 v10, 0x0

    .line 250
    iget-object v8, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget v6, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    .line 251
    move-object v9, v1

    check-cast v9, Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v9, v5}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v50, v9

    check-cast v50, Lcom/google/common/collect/ImmutableList;

    .line 252
    new-instance v9, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    const/16 v11, 0x2710

    int-to-long v11, v11

    const/16 v13, 0x61a8

    int-to-long v13, v13

    sget-object v51, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const v48, 0x3f333333    # 0.7f

    const/high16 v49, 0x3f400000    # 0.75f

    move-object/from16 v37, v9

    move-object/from16 v38, v8

    move-object/from16 v39, v7

    move/from16 v40, v6

    move-object/from16 v41, v0

    move-wide/from16 v42, v11

    move-wide/from16 v44, v13

    move-wide/from16 v46, v13

    invoke-direct/range {v37 .. v51}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V

    move-object v8, v9

    .line 253
    :goto_4c
    aput-object v8, v3, v5

    goto :goto_4e

    :cond_6e
    :goto_4d
    const/4 v10, 0x0

    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    :cond_6f
    const/4 v10, 0x0

    .line 254
    new-array v0, v2, [Lcom/google/android/exoplayer2/RendererConfiguration;

    move v1, v10

    :goto_4f
    if-ge v1, v2, :cond_74

    .line 255
    iget-object v5, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_71

    .line 256
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v5, v5, v1

    const/4 v6, 0x7

    if-eq v5, v6, :cond_70

    .line 257
    aget-object v5, v3, v1

    if-eqz v5, :cond_72

    :cond_70
    const/4 v5, 0x1

    goto :goto_50

    :cond_71
    const/4 v6, 0x7

    :cond_72
    move v5, v10

    :goto_50
    if-eqz v5, :cond_73

    .line 258
    sget-object v5, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_51

    :cond_73
    const/4 v5, 0x0

    :goto_51
    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 259
    :cond_74
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz v1, :cond_7e

    move v1, v10

    const/4 v2, -0x1

    const/4 v5, -0x1

    .line 260
    :goto_52
    iget v6, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v1, v6, :cond_7c

    .line 261
    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v6, v6, v1

    .line 262
    aget-object v7, v3, v1

    const/4 v8, 0x1

    if-eq v6, v8, :cond_76

    const/4 v8, 0x2

    if-ne v6, v8, :cond_75

    goto :goto_53

    :cond_75
    const/4 v6, -0x1

    goto :goto_57

    :cond_76
    const/4 v8, 0x2

    :goto_53
    if-eqz v7, :cond_75

    .line 263
    aget-object v9, v32, v1

    .line 264
    iget-object v11, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v11, v11, v1

    .line 265
    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v11

    move v12, v10

    .line 266
    :goto_54
    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v13

    if-ge v12, v13, :cond_78

    .line 267
    aget-object v13, v9, v11

    invoke-interface {v7, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v14

    aget v13, v13, v14

    const/16 v14, 0x20

    and-int/2addr v13, v14

    if-eq v13, v14, :cond_77

    move v7, v10

    goto :goto_55

    :cond_77
    add-int/lit8 v12, v12, 0x1

    goto :goto_54

    :cond_78
    const/4 v7, 0x1

    :goto_55
    if-eqz v7, :cond_75

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7a

    const/4 v6, -0x1

    if-eq v5, v6, :cond_79

    goto :goto_56

    :cond_79
    move v5, v1

    goto :goto_57

    :cond_7a
    const/4 v6, -0x1

    if-eq v2, v6, :cond_7b

    :goto_56
    move v1, v10

    goto :goto_58

    :cond_7b
    move v2, v1

    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_7c
    const/4 v6, -0x1

    const/4 v1, 0x1

    :goto_58
    if-eq v5, v6, :cond_7d

    if-eq v2, v6, :cond_7d

    const/4 v14, 0x1

    goto :goto_59

    :cond_7d
    move v14, v10

    :goto_59
    and-int/2addr v1, v14

    if-eqz v1, :cond_7e

    .line 268
    new-instance v1, Lcom/google/android/exoplayer2/RendererConfiguration;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    .line 269
    aput-object v1, v0, v5

    .line 270
    aput-object v1, v0, v2

    .line 271
    :cond_7e
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/exoplayer2/RendererConfiguration;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v1, v2, v0, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Ljava/lang/Object;)V

    return-object v1
.end method
