.class public Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    }
.end annotation


# static fields
.field public static final EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

.field public static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B


# instance fields
.field public atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field public durationUs:J

.field public emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public endOfMdatPosition:J

.field public final eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final flags:I

.field public haveOutputSeekMap:Z

.field public final nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public parserState:I

.field public pendingMetadataSampleBytes:I

.field public final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pendingSeekTimeUs:J

.field public processSeiNalUnitPayload:Z

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleSize:I

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final scratchBytes:[B

.field public segmentIndexEarliestPresentationTimeUs:J

.field public final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-array p1, v0, [B

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 12
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 16
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 17
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 18
    sget-object p1, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 20
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public static checkNonNegative(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x26

    const-string v1, "Unexpected negative value: "

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leafChildren"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 3
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 6
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 7
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    :goto_1
    if-nez v6, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 9
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10
    :cond_2
    new-instance v7, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v0, v1, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 12
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    move-object v2, p0

    :goto_3
    return-object v2
.end method

.method public static parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "senc",
            "offset",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 5
    :cond_1
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v2, v3, :cond_3

    .line 6
    iget-object v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    .line 8
    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 9
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v4, v3

    if-ge v4, p1, :cond_2

    .line 10
    new-array v3, p1, [B

    .line 11
    :cond_2
    iput-object v3, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 12
    iput p1, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 13
    iput v0, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 14
    iput-boolean v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 15
    iput-boolean v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 16
    invoke-virtual {p0, v3, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 17
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 18
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void

    :cond_3
    const/16 p0, 0x50

    const-string p1, "Senc sample count "

    const-string p2, " is different from fragment sample count"

    .line 19
    invoke-static {p0, p1, v2, p2, v3}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 20
    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public final getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultSampleValuesArray",
            "trackId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/16 v3, 0x65

    const/4 v4, 0x5

    .line 6
    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 p1, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 8
    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 9
    sget-object v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 11
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length p1, p1

    if-ge v2, p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x3

    invoke-interface {p1, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final processAtomEnded(J)V
    .locals 47
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

    move-object v1, v0

    .line 1
    :goto_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_55

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 3
    iget v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v4, 0x6d6f6f76

    const/16 v5, 0xc

    if-ne v2, v4, :cond_9

    .line 4
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v7

    const v2, 0x6d766578

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 8
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_3

    .line 9
    iget-object v12, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 10
    iget v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v14, 0x74726578

    if-ne v13, v14, :cond_0

    .line 11
    iget-object v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 12
    invoke-virtual {v12, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 13
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 14
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 15
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 16
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 17
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v13, v14, v15, v12}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 19
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 20
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v11, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    const v5, 0x6d656864

    if-ne v13, v5, :cond_2

    .line 21
    iget-object v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0x8

    .line 22
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 23
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_1

    .line 24
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    goto :goto_3

    :cond_2
    :goto_2
    const/16 v6, 0x8

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    goto :goto_1

    .line 25
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    const/4 v10, 0x0

    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;)V

    move-wide v5, v8

    move v8, v2

    move v9, v10

    move-object v10, v12

    .line 26
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 28
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_5

    .line 29
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 30
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 31
    new-instance v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 32
    invoke-interface {v8, v4, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v8

    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 33
    invoke-virtual {v1, v11, v9}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 34
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v8, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v5, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 36
    :cond_5
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_8

    .line 37
    :cond_6
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_8

    .line 38
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 39
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 40
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v8, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 41
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 42
    invoke-virtual {v1, v11, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v6

    .line 43
    iput-object v5, v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 44
    iput-object v6, v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 45
    iget-object v6, v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 46
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    move-object v3, v0

    goto/16 :goto_39

    :cond_9
    const/16 v6, 0x8

    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_53

    .line 47
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 48
    iget-object v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v5, :cond_4c

    .line 49
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 50
    iget v9, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v10, 0x74726166

    if-ne v9, v10, :cond_4b

    const v9, 0x74666864

    .line 51
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 52
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 54
    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 55
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    .line 56
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 57
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v11, :cond_a

    const/4 v11, 0x0

    goto :goto_e

    :cond_a
    and-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_b

    .line 58
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    .line 59
    iget-object v14, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v12, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 60
    iput-wide v12, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 61
    :cond_b
    iget-object v12, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v13, v10, 0x2

    if-eqz v13, :cond_c

    .line 62
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 63
    :cond_c
    iget v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_a
    and-int/lit8 v14, v10, 0x8

    if-eqz v14, :cond_d

    .line 64
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    goto :goto_b

    .line 65
    :cond_d
    iget v14, v12, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_b
    and-int/lit8 v15, v10, 0x10

    if-eqz v15, :cond_e

    .line 66
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    goto :goto_c

    .line 67
    :cond_e
    iget v15, v12, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    :goto_c
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_f

    .line 68
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    goto :goto_d

    .line 69
    :cond_f
    iget v9, v12, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 70
    :goto_d
    iget-object v10, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v12, v13, v14, v15, v9}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v12, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    :goto_e
    if-nez v11, :cond_10

    goto/16 :goto_33

    .line 71
    :cond_10
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 72
    iget-wide v12, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 73
    iget-boolean v10, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 74
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v14, 0x1

    .line 75
    iput-boolean v14, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const v14, 0x74666474

    .line 76
    invoke-virtual {v8, v14}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    if-eqz v14, :cond_12

    and-int/lit8 v15, v4, 0x2

    if-nez v15, :cond_12

    .line 77
    iget-object v10, v14, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 78
    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 79
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    const/4 v12, 0x1

    if-ne v6, v12, :cond_11

    .line 80
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v13

    goto :goto_f

    :cond_11
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 81
    :goto_f
    iput-wide v13, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 82
    iput-boolean v12, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_10

    .line 83
    :cond_12
    iput-wide v12, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 84
    iput-boolean v10, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 85
    :goto_10
    iget-object v6, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 86
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_11
    const v15, 0x7472756e

    if-ge v12, v10, :cond_14

    .line 87
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move/from16 v16, v5

    .line 88
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    if-ne v5, v15, :cond_13

    .line 89
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v5, 0xc

    .line 90
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 91
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-lez v2, :cond_13

    add-int/2addr v14, v2

    add-int/lit8 v13, v13, 0x1

    :cond_13
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    move-object/from16 v2, v17

    goto :goto_11

    :cond_14
    move-object/from16 v17, v2

    move/from16 v16, v5

    const/4 v2, 0x0

    .line 92
    iput v2, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 93
    iput v2, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 94
    iput v2, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 95
    iget-object v2, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 96
    iput v13, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    .line 97
    iput v14, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    .line 98
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    array-length v5, v5

    if-ge v5, v13, :cond_15

    .line 99
    new-array v5, v13, [J

    iput-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    .line 100
    new-array v5, v13, [I

    iput-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    .line 101
    :cond_15
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length v5, v5

    if-ge v5, v14, :cond_16

    mul-int/lit8 v14, v14, 0x7d

    .line 102
    div-int/lit8 v14, v14, 0x64

    .line 103
    new-array v5, v14, [I

    iput-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 104
    new-array v5, v14, [I

    iput-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    .line 105
    new-array v5, v14, [J

    iput-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    .line 106
    new-array v5, v14, [Z

    iput-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 107
    new-array v5, v14, [Z

    iput-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    :cond_16
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_12
    if-ge v2, v10, :cond_2b

    .line 108
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 109
    iget v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    if-ne v14, v15, :cond_2a

    add-int/lit8 v14, v12, 0x1

    .line 110
    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v15, 0x8

    .line 111
    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    const v18, 0xffffff

    and-int v15, v15, v18

    move-object/from16 v18, v6

    .line 113
    iget-object v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move/from16 v19, v10

    .line 114
    iget-object v10, v11, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    move/from16 v20, v14

    .line 115
    iget-object v14, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    sget v21, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 116
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    aput v21, v0, v12

    .line 117
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    move/from16 v21, v7

    move-object/from16 v22, v8

    iget-wide v7, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v7, v0, v12

    and-int/lit8 v7, v15, 0x1

    if-eqz v7, :cond_17

    .line 118
    aget-wide v7, v0, v12

    move-object/from16 v23, v3

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    move-object/from16 v24, v1

    move/from16 v25, v2

    int-to-long v1, v3

    add-long/2addr v7, v1

    aput-wide v7, v0, v12

    goto :goto_13

    :cond_17
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v23, v3

    :goto_13
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_14

    :cond_18
    const/4 v0, 0x0

    .line 119
    :goto_14
    iget v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v0, :cond_19

    .line 120
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    :cond_19
    and-int/lit16 v2, v15, 0x100

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_15

    :cond_1a
    const/4 v2, 0x0

    :goto_15
    and-int/lit16 v3, v15, 0x200

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_16

    :cond_1b
    const/4 v3, 0x0

    :goto_16
    and-int/lit16 v7, v15, 0x400

    if-eqz v7, :cond_1c

    const/4 v7, 0x1

    goto :goto_17

    :cond_1c
    const/4 v7, 0x0

    :goto_17
    and-int/lit16 v8, v15, 0x800

    if-eqz v8, :cond_1d

    const/4 v8, 0x1

    goto :goto_18

    :cond_1d
    const/4 v8, 0x0

    .line 121
    :goto_18
    iget-object v15, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v15, :cond_1f

    move/from16 v26, v1

    array-length v1, v15

    move-object/from16 v27, v9

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1e

    const/4 v1, 0x0

    aget-wide v28, v15, v1

    const-wide/16 v30, 0x0

    cmp-long v9, v28, v30

    if-nez v9, :cond_1e

    .line 122
    iget-object v9, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 123
    aget-wide v28, v9, v1

    const-wide/32 v30, 0xf4240

    move v1, v8

    iget-wide v8, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v32, v8

    .line 124
    invoke-static/range {v28 .. v33}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    goto :goto_1a

    :cond_1e
    move v1, v8

    goto :goto_19

    :cond_1f
    move/from16 v26, v1

    move v1, v8

    move-object/from16 v27, v9

    :goto_19
    const-wide/16 v8, 0x0

    .line 125
    :goto_1a
    iget-object v15, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v28, v15

    .line 126
    iget-object v15, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    move-object/from16 v29, v11

    .line 127
    iget-object v11, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    move-object/from16 v30, v11

    .line 128
    iget-object v11, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v31, v11

    .line 129
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    move-wide/from16 v32, v8

    const/4 v8, 0x2

    if-ne v11, v8, :cond_20

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_20

    const/4 v8, 0x1

    goto :goto_1b

    :cond_20
    const/4 v8, 0x0

    .line 130
    :goto_1b
    iget-object v9, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    aget v9, v9, v12

    add-int/2addr v9, v5

    .line 131
    iget-wide v11, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 v40, v4

    move v6, v5

    .line 132
    iget-wide v4, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    :goto_1c
    if-ge v6, v9, :cond_29

    if-eqz v2, :cond_21

    .line 133
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v34

    move/from16 v41, v2

    move/from16 v2, v34

    goto :goto_1d

    :cond_21
    move/from16 v41, v2

    iget v2, v14, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_1d
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    if-eqz v3, :cond_22

    .line 134
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v34

    move/from16 v42, v3

    move/from16 v3, v34

    goto :goto_1e

    :cond_22
    move/from16 v42, v3

    iget v3, v14, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    :goto_1e
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    if-eqz v7, :cond_23

    .line 135
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v34

    move/from16 v43, v0

    move/from16 v0, v34

    goto :goto_1f

    :cond_23
    if-nez v6, :cond_24

    if-eqz v0, :cond_24

    move/from16 v43, v0

    move/from16 v0, v26

    goto :goto_1f

    :cond_24
    move/from16 v43, v0

    .line 136
    iget v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_1f
    if-eqz v1, :cond_25

    move/from16 v44, v1

    .line 137
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    int-to-long v13, v1

    const-wide/32 v34, 0xf4240

    mul-long v13, v13, v34

    .line 138
    div-long/2addr v13, v11

    long-to-int v1, v13

    aput v1, v15, v6

    goto :goto_20

    :cond_25
    move/from16 v44, v1

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    const/4 v1, 0x0

    .line 139
    aput v1, v15, v6

    :goto_20
    const-wide/32 v36, 0xf4240

    move-wide/from16 v34, v4

    move-wide/from16 v38, v11

    .line 140
    invoke-static/range {v34 .. v39}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    sub-long v13, v13, v32

    aput-wide v13, v30, v6

    .line 141
    iget-boolean v1, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v1, :cond_26

    .line 142
    aget-wide v13, v30, v6

    move-object/from16 v1, v29

    move/from16 v29, v7

    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-wide/from16 v34, v11

    iget-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long/2addr v13, v11

    aput-wide v13, v30, v6

    goto :goto_21

    :cond_26
    move-wide/from16 v34, v11

    move-object/from16 v1, v29

    move/from16 v29, v7

    .line 143
    :goto_21
    aput v3, v28, v6

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_28

    if-eqz v8, :cond_27

    if-nez v6, :cond_28

    :cond_27
    const/4 v0, 0x1

    goto :goto_22

    :cond_28
    const/4 v0, 0x0

    .line 144
    :goto_22
    aput-boolean v0, v31, v6

    int-to-long v2, v2

    add-long/2addr v4, v2

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v29

    move-wide/from16 v11, v34

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v0, v43

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v29, v1

    move/from16 v1, v44

    goto/16 :goto_1c

    :cond_29
    move-object/from16 v1, v29

    .line 145
    iput-wide v4, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move v5, v9

    move/from16 v12, v20

    goto :goto_23

    :cond_2a
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v23, v3

    move/from16 v40, v4

    move-object/from16 v18, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    move/from16 v19, v10

    move-object v1, v11

    move v6, v5

    :goto_23
    add-int/lit8 v2, v25, 0x1

    const v15, 0x7472756e

    move-object/from16 v0, p0

    move-object v11, v1

    move-object/from16 v6, v18

    move/from16 v10, v19

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v3, v23

    move-object/from16 v1, v24

    move-object/from16 v9, v27

    move/from16 v4, v40

    goto/16 :goto_12

    :cond_2b
    move-object/from16 v24, v1

    move-object/from16 v23, v3

    move/from16 v40, v4

    move/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    move-object v1, v11

    .line 146
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object/from16 v1, v27

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 147
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 149
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    const v2, 0x7361697a

    .line 150
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 151
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 153
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v4, 0x8

    .line 154
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 155
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2c

    .line 156
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 157
    :cond_2c
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 158
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 159
    iget v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v5, v6, :cond_32

    if-nez v4, :cond_2f

    .line 160
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_24
    if-ge v6, v5, :cond_2e

    .line 161
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    add-int/2addr v7, v9

    if-le v9, v3, :cond_2d

    const/4 v9, 0x1

    goto :goto_25

    :cond_2d
    const/4 v9, 0x0

    .line 162
    :goto_25
    aput-boolean v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_2e
    const/4 v2, 0x0

    goto :goto_27

    :cond_2f
    if-le v4, v3, :cond_30

    const/4 v2, 0x1

    goto :goto_26

    :cond_30
    const/4 v2, 0x0

    :goto_26
    mul-int/2addr v4, v5

    const/4 v3, 0x0

    add-int/lit8 v7, v4, 0x0

    .line 163
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v4, v3, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    move v2, v3

    .line 164
    :goto_27
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {v3, v5, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_33

    .line 165
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 166
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v4, v3

    if-ge v4, v7, :cond_31

    .line 167
    new-array v3, v7, [B

    :cond_31
    invoke-virtual {v2, v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    const/4 v2, 0x1

    .line 168
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 169
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    goto :goto_28

    :cond_32
    const/16 v0, 0x4e

    const-string v1, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    .line 170
    invoke-static {v0, v1, v5, v2, v6}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_33
    :goto_28
    const v2, 0x7361696f

    .line 171
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 172
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v3, 0x8

    .line 173
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 174
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_34

    .line 175
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 176
    :cond_34
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    if-ne v3, v6, :cond_36

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 177
    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v3, :cond_35

    .line 178
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_29

    :cond_35
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_29
    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    goto :goto_2a

    :cond_36
    const/16 v0, 0x28

    const-string v1, "Unexpected saio entry count: "

    const/4 v2, 0x0

    .line 179
    invoke-static {v0, v1, v3, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_37
    :goto_2a
    const/4 v2, 0x0

    const v3, 0x73656e63

    .line 180
    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 181
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v4, 0x0

    .line 182
    invoke-static {v3, v4, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_38
    if-eqz v0, :cond_39

    .line 183
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    move-object/from16 v27, v0

    goto :goto_2b

    :cond_39
    move-object/from16 v27, v2

    :goto_2b
    const/4 v0, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 184
    :goto_2c
    iget-object v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3c

    .line 185
    iget-object v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 186
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 187
    iget v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v7, 0x73626770

    const v9, 0x73656967

    if-ne v5, v7, :cond_3a

    const/16 v5, 0xc

    .line 188
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 189
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    if-ne v5, v9, :cond_3b

    move-object v3, v6

    goto :goto_2d

    :cond_3a
    const/16 v7, 0xc

    const v10, 0x73677064

    if-ne v5, v10, :cond_3b

    .line 190
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 191
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    if-ne v5, v9, :cond_3b

    move-object v4, v6

    :cond_3b
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3c
    if-eqz v3, :cond_47

    if-nez v4, :cond_3d

    goto/16 :goto_30

    :cond_3d
    const/16 v0, 0x8

    .line 192
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 193
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x4

    .line 194
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3e

    .line 195
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 196
    :cond_3e
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_46

    const/16 v0, 0x8

    .line 197
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 198
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 199
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-ne v0, v6, :cond_40

    .line 200
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_3f

    goto :goto_2e

    :cond_3f
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 201
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_40
    const/4 v3, 0x2

    if-lt v0, v3, :cond_41

    .line 202
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 203
    :cond_41
    :goto_2e
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    const-wide/16 v9, 0x1

    cmp-long v0, v5, v9

    if-nez v0, :cond_45

    const/4 v0, 0x1

    .line 204
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 205
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v30, v5, 0x4

    and-int/lit8 v31, v3, 0xf

    .line 206
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    if-ne v3, v0, :cond_42

    const/4 v0, 0x1

    goto :goto_2f

    :cond_42
    const/4 v0, 0x0

    :goto_2f
    move/from16 v26, v0

    if-nez v26, :cond_43

    goto :goto_30

    .line 207
    :cond_43
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v28

    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 208
    iget-object v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-nez v28, :cond_44

    .line 210
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 211
    new-array v2, v0, [B

    .line 212
    iget-object v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    :cond_44
    move-object/from16 v32, v2

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 215
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v25, v0

    move-object/from16 v29, v3

    invoke-direct/range {v25 .. v32}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_30

    :cond_45
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 216
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_46
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 217
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 218
    :cond_47
    :goto_30
    iget-object v0, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v0, :cond_4a

    .line 219
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 220
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_49

    .line 221
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v4, 0x8

    .line 222
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 223
    iget-object v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v5, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object/from16 v9, v24

    invoke-static {v4, v5, v9, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v4, v7

    iput v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 225
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {v9, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_32

    .line 226
    :cond_48
    invoke-static {v3, v7, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    goto :goto_32

    :cond_49
    move-object/from16 v9, v24

    :goto_32
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v9

    goto :goto_31

    :cond_4a
    move-object/from16 v9, v24

    const/16 v0, 0x8

    move v6, v0

    goto :goto_34

    :cond_4b
    :goto_33
    move-object v9, v1

    move-object/from16 v17, v2

    move-object/from16 v23, v3

    move/from16 v40, v4

    move/from16 v16, v5

    move/from16 v21, v7

    :goto_34
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v5, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    move/from16 v4, v40

    goto/16 :goto_9

    :cond_4c
    move-object/from16 v23, v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v2, v23

    .line 227
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v2

    move-object/from16 v3, p0

    if-eqz v2, :cond_4e

    .line 228
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_35
    if-ge v5, v4, :cond_4e

    .line 229
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 230
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v8, v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 231
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 232
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    if-eqz v7, :cond_4d

    .line 233
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_36

    :cond_4d
    move-object v7, v0

    .line 234
    :goto_36
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v7

    .line 235
    iget-object v8, v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 236
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 237
    iput-object v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 238
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 239
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 240
    :cond_4e
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_52

    .line 241
    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_37
    if-ge v1, v0, :cond_51

    .line 242
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 243
    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 244
    :goto_38
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v6, v8, :cond_50

    .line 245
    iget-object v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    aget-wide v8, v8, v6

    iget-object v10, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    aget v10, v10, v6

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v8, v8, v4

    if-gez v8, :cond_50

    .line 246
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_4f

    .line 247
    iput v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_51
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 248
    iput-wide v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_52
    move-object v1, v3

    goto :goto_39

    :cond_53
    move-object v2, v3

    move-object v3, v0

    .line 249
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 250
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 251
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    :goto_39
    move-object v0, v3

    goto/16 :goto_0

    :cond_55
    move-object v3, v0

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 24
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

    .line 1
    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_37

    const-string v8, "FragmentedMp4Extractor"

    if-eq v2, v7, :cond_29

    const-wide v3, 0x7fffffffffffffffL

    const/4 v9, 0x3

    if-eq v2, v6, :cond_24

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v2, :cond_8

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v10, 0x0

    move-wide/from16 v22, v3

    move-object v3, v5

    move v4, v10

    move-wide/from16 v10, v22

    :goto_1
    if-ge v4, v6, :cond_4

    .line 5
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 6
    iget-boolean v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v13, :cond_1

    .line 7
    iget v14, v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v15, v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v15, v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v14, v15, :cond_3

    :cond_1
    if-eqz v13, :cond_2

    .line 8
    iget v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v14, v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v14, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v13, v14, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v13

    cmp-long v15, v13, v10

    if-gez v15, :cond_3

    move-object v3, v12

    move-wide v10, v13

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_6

    .line 10
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v2, v2

    if-ltz v2, :cond_5

    .line 11
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_5
    const-string v0, "Offset to end of mdat was negative."

    .line 13
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 14
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v10

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v2, v10

    if-gez v2, :cond_7

    const-string v2, "Ignoring negative offset to sample data."

    .line 16
    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 17
    :cond_7
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 18
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object v2, v3

    .line 19
    :cond_8
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v4, 0x6

    if-ne v3, v9, :cond_12

    .line 20
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v3, :cond_9

    .line 21
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v3, v3, v6

    goto :goto_3

    .line 22
    :cond_9
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v3, v3, v6

    .line 23
    :goto_3
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 24
    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v6, v8, :cond_f

    .line 25
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 26
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_5

    .line 27
    :cond_a
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 28
    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v3, :cond_b

    .line 29
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 30
    :cond_b
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 31
    iget-boolean v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v10, :cond_c

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_c

    move v3, v7

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_d

    .line 32
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    mul-int/2addr v3, v4

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 33
    :cond_d
    :goto_5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v2

    if-nez v2, :cond_e

    .line 34
    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 35
    :cond_e
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_11

    .line 36
    :cond_f
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v6, v7, :cond_10

    add-int/lit8 v3, v3, -0x8

    .line 37
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v3, 0x8

    .line 38
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 39
    :cond_10
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 40
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v6, 0x7

    .line 41
    invoke-virtual {v2, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 42
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3, v8}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 43
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v3, v8, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 44
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    const/4 v3, 0x0

    goto :goto_6

    .line 45
    :cond_11
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v6, 0x0

    .line 46
    invoke-virtual {v2, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move v3, v6

    .line 47
    :goto_6
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v6, 0x4

    .line 48
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 49
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 50
    :cond_12
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 51
    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 52
    iget-boolean v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v9, :cond_13

    .line 53
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v9, v3, v9

    goto :goto_7

    .line 54
    :cond_13
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 55
    iget-object v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    aget-wide v10, v10, v9

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    aget v3, v3, v9

    int-to-long v12, v3

    add-long v9, v10, v12

    :goto_7
    move-wide v14, v9

    .line 56
    iget v3, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v3, :cond_1b

    .line 57
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 58
    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    .line 59
    aput-byte v10, v9, v10

    .line 60
    aput-byte v10, v9, v7

    const/4 v11, 0x2

    .line 61
    aput-byte v10, v9, v11

    add-int/lit8 v10, v3, 0x1

    rsub-int/lit8 v3, v3, 0x4

    .line 62
    :goto_8
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v11, v12, :cond_1c

    .line 63
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-string/jumbo v12, "video/hevc"

    if-nez v11, :cond_19

    .line 64
    invoke-interface {v1, v9, v3, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 65
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 66
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    if-lt v11, v7, :cond_18

    add-int/lit8 v11, v11, -0x1

    .line 67
    iput v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 68
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 69
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v13, 0x4

    invoke-interface {v8, v11, v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 70
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v8, v11, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 71
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v11, v11

    if-lez v11, :cond_17

    iget-object v11, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v11, v11, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v13, v9, v13

    .line 72
    sget-object v16, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    const-string/jumbo v5, "video/avc"

    .line 73
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    and-int/lit8 v5, v13, 0x1f

    if-eq v5, v4, :cond_15

    .line 74
    :cond_14
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    and-int/lit8 v5, v13, 0x7e

    shr-int/2addr v5, v7

    const/16 v11, 0x27

    if-ne v5, v11, :cond_16

    :cond_15
    move v5, v7

    goto :goto_9

    :cond_16
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_17

    move v5, v7

    goto :goto_a

    :cond_17
    const/4 v5, 0x0

    .line 75
    :goto_a
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 76
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v5, v5, 0x5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 77
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_c

    :cond_18
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    .line 78
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 79
    :cond_19
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v4, :cond_1a

    .line 80
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 81
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 82
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 83
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v7, 0x0

    invoke-interface {v1, v4, v7, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 84
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v8, v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 85
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 86
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 87
    iget-object v7, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 88
    iget v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 89
    invoke-static {v7, v5}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v5

    .line 90
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v11, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v11, v11, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 91
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 92
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v14, v15, v5, v7}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_b

    :cond_1a
    const/4 v4, 0x0

    .line 93
    invoke-interface {v8, v1, v11, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v4

    .line 94
    :goto_b
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 95
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v4, 0x6

    const/4 v5, 0x1

    move v7, v5

    :goto_c
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 96
    :cond_1b
    :goto_d
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v4, :cond_1c

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    .line 97
    invoke-interface {v8, v1, v4, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v3

    .line 98
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_d

    .line 99
    :cond_1c
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v3, :cond_1d

    .line 100
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    iget v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v3, v3, v4

    goto :goto_e

    .line 101
    :cond_1d
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_e

    :cond_1e
    const/4 v3, 0x0

    .line 102
    :goto_e
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    :cond_1f
    move v11, v3

    .line 103
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 104
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    goto :goto_f

    :cond_20
    const/4 v3, 0x0

    .line 105
    :goto_f
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v13, 0x0

    move-wide v9, v14

    move-wide v4, v14

    move-object v14, v3

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 106
    :cond_21
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 107
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 108
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 109
    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    add-long/2addr v6, v4

    .line 110
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v14, v15

    const/4 v8, 0x0

    move v13, v8

    :goto_10
    if-ge v13, v14, :cond_21

    aget-object v8, v15, v13

    const/4 v11, 0x1

    .line 111
    iget v12, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/16 v16, 0x0

    move/from16 v17, v9

    move-wide v9, v6

    move/from16 v18, v13

    move/from16 v13, v17

    move/from16 v17, v14

    move-object/from16 v14, v16

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v13, v18, 0x1

    move/from16 v14, v17

    goto :goto_10

    .line 112
    :cond_22
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x0

    .line 113
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_23
    const/4 v2, 0x3

    .line 114
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v7, 0x1

    :goto_11
    if-eqz v7, :cond_0

    const/4 v0, 0x0

    return v0

    .line 115
    :cond_24
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_12
    if-ge v6, v2, :cond_26

    .line 116
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 117
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v8, :cond_25

    iget-wide v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v9, v7, v4

    if-gez v9, :cond_25

    .line 118
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v4, v7

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_26
    if-nez v3, :cond_27

    const/4 v2, 0x3

    .line 119
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_0

    .line 120
    :cond_27
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_28

    .line 121
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 122
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 123
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 124
    iget-object v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 125
    iget v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    const/4 v5, 0x0

    .line 126
    invoke-interface {v1, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 127
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 128
    iput-boolean v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    goto/16 :goto_0

    :cond_28
    const-string v0, "Offset to encryption data was negative."

    const/4 v1, 0x0

    .line 129
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 130
    :cond_29
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v2, v5

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v2, v5

    .line 131
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v5, :cond_36

    .line 132
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v7, 0x8

    .line 133
    invoke-interface {v1, v6, v7, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 134
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v6, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    .line 135
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2a

    .line 136
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 137
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_2a
    if-ne v6, v4, :cond_2e

    const/16 v1, 0x8

    .line 138
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x4

    .line 140
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 141
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_2b

    .line 142
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 143
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    goto :goto_13

    .line 144
    :cond_2b
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 145
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v11

    :goto_13
    add-long v8, v11, v9

    const-wide/32 v13, 0xf4240

    move-wide v11, v6

    move-wide v15, v2

    .line 146
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v17

    const/4 v1, 0x2

    .line 147
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 148
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 149
    new-array v4, v1, [I

    .line 150
    new-array v10, v1, [J

    .line 151
    new-array v15, v1, [J

    .line 152
    new-array v13, v1, [J

    const/4 v11, 0x0

    move v14, v11

    move-wide/from16 v11, v17

    :goto_14
    if-ge v14, v1, :cond_2d

    .line 153
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    const/high16 v19, -0x80000000

    and-int v19, v16, v19

    if-nez v19, :cond_2c

    .line 154
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v16, v16, v21

    .line 155
    aput v16, v4, v14

    .line 156
    aput-wide v8, v10, v14

    .line 157
    aput-wide v11, v13, v14

    add-long v6, v6, v19

    const-wide/32 v19, 0xf4240

    move-wide v11, v6

    move/from16 p2, v1

    move-object v1, v13

    move/from16 v21, v14

    move-wide/from16 v13, v19

    move-wide/from16 v19, v6

    move-object v6, v15

    move-wide v15, v2

    .line 158
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 159
    aget-wide v13, v1, v21

    sub-long v13, v11, v13

    aput-wide v13, v6, v21

    const/4 v7, 0x4

    .line 160
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 161
    aget v7, v4, v21

    int-to-long v13, v7

    add-long/2addr v8, v13

    add-int/lit8 v14, v21, 0x1

    move-object v13, v1

    move-object v15, v6

    move-wide/from16 v6, v19

    move/from16 v1, p2

    goto :goto_14

    :cond_2c
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    .line 162
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_2d
    move-object v1, v13

    move-object v6, v15

    .line 163
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v3, v4, v10, v6, v1}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 164
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 165
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 166
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto/16 :goto_18

    :cond_2e
    if-ne v6, v3, :cond_35

    .line 168
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v1, v1

    if-nez v1, :cond_2f

    goto/16 :goto_18

    :cond_2f
    const/16 v1, 0x8

    .line 169
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 170
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_31

    const/4 v4, 0x1

    if-eq v1, v4, :cond_30

    const/16 v2, 0x2e

    const-string v3, "Skipping unsupported emsg version: "

    .line 171
    invoke-static {v2, v3, v1, v8}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    .line 172
    :cond_30
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 173
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    move-wide v13, v6

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    .line 174
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 175
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 176
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v17, v15

    goto :goto_15

    .line 180
    :cond_31
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 185
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    .line 186
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_32

    add-long v2, v6, v14

    .line 187
    :cond_32
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 188
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    move-wide/from16 v17, v2

    move-wide v2, v14

    .line 189
    :goto_15
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    new-array v10, v10, [B

    .line 190
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    .line 191
    iget-object v12, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v13, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v14, 0x0

    invoke-static {v12, v13, v10, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v12, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v12, v11

    iput v12, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 193
    new-instance v5, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 194
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    .line 195
    iget-object v12, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 196
    :try_start_0
    iget-object v12, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 197
    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 199
    iget-object v12, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 200
    invoke-virtual {v12, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 202
    iget-object v1, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 203
    iget-object v1, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 204
    iget-object v1, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 205
    iget-object v1, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 206
    iget-object v1, v11, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    invoke-direct {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 208
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 209
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v6, :cond_33

    aget-object v8, v4, v7

    const/4 v9, 0x0

    .line 210
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 211
    invoke-interface {v8, v5, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_33
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v17, v4

    if-nez v4, :cond_34

    .line 212
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v5, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 213
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_18

    .line 214
    :cond_34
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_35

    aget-object v10, v2, v4

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v11, v17

    move v14, v1

    .line 215
    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_35
    :goto_18
    move-object/from16 v1, p1

    goto :goto_19

    .line 217
    :cond_36
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 218
    :goto_19
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto/16 :goto_0

    .line 219
    :cond_37
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v2, :cond_39

    .line 220
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 221
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 222
    invoke-interface {v1, v2, v6, v5, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_38

    goto/16 :goto_22

    .line 223
    :cond_38
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 224
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 225
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 226
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 227
    :cond_39
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3a

    .line 228
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 229
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v5, 0x8

    .line 230
    invoke-interface {v1, v2, v5, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 231
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 232
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_1a

    :cond_3a
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_3c

    .line 233
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3b

    .line 234
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 235
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_3b
    cmp-long v2, v5, v7

    if-eqz v2, :cond_3c

    .line 236
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 237
    :cond_3c
    :goto_1a
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_4b

    .line 238
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v2

    sub-long/2addr v5, v7

    .line 239
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v7, 0x6d646174

    const v8, 0x6d6f6f66

    if-eq v2, v8, :cond_3d

    if-ne v2, v7, :cond_3e

    .line 240
    :cond_3d
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v2, :cond_3e

    .line 241
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v9, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v9, v10, v11, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v2, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 v2, 0x1

    .line 242
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 243
    :cond_3e
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v2, v8, :cond_3f

    .line 244
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v2, :cond_3f

    .line 245
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 246
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iput-wide v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 248
    iput-wide v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 249
    :cond_3f
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v2, v7, :cond_40

    const/4 v2, 0x0

    .line 250
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 251
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 v2, 0x2

    .line 252
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x1

    goto/16 :goto_22

    :cond_40
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_42

    const v5, 0x7472616b

    if-eq v2, v5, :cond_42

    const v5, 0x6d646961

    if-eq v2, v5, :cond_42

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_42

    const v5, 0x7374626c

    if-eq v2, v5, :cond_42

    if-eq v2, v8, :cond_42

    const v5, 0x74726166

    if-eq v2, v5, :cond_42

    const v5, 0x6d766578

    if-eq v2, v5, :cond_42

    const v5, 0x65647473

    if-ne v2, v5, :cond_41

    goto :goto_1c

    :cond_41
    const/4 v5, 0x0

    goto :goto_1d

    :cond_42
    :goto_1c
    const/4 v5, 0x1

    :goto_1d
    if-eqz v5, :cond_44

    .line 253
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 254
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 255
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_43

    .line 256
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_1e

    .line 257
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    :goto_1e
    const/4 v2, 0x1

    :goto_1f
    move v6, v2

    goto/16 :goto_22

    :cond_44
    const v5, 0x68646c72    # 4.3148E24f

    if-eq v2, v5, :cond_46

    const v5, 0x6d646864

    if-eq v2, v5, :cond_46

    const v5, 0x6d766864

    if-eq v2, v5, :cond_46

    if-eq v2, v4, :cond_46

    const v4, 0x73747364

    if-eq v2, v4, :cond_46

    const v4, 0x73747473

    if-eq v2, v4, :cond_46

    const v4, 0x63747473

    if-eq v2, v4, :cond_46

    const v4, 0x73747363

    if-eq v2, v4, :cond_46

    const v4, 0x7374737a

    if-eq v2, v4, :cond_46

    const v4, 0x73747a32

    if-eq v2, v4, :cond_46

    const v4, 0x7374636f

    if-eq v2, v4, :cond_46

    const v4, 0x636f3634

    if-eq v2, v4, :cond_46

    const v4, 0x73747373

    if-eq v2, v4, :cond_46

    const v4, 0x74666474

    if-eq v2, v4, :cond_46

    const v4, 0x74666864

    if-eq v2, v4, :cond_46

    const v4, 0x746b6864

    if-eq v2, v4, :cond_46

    const v4, 0x74726578

    if-eq v2, v4, :cond_46

    const v4, 0x7472756e

    if-eq v2, v4, :cond_46

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_46

    const v4, 0x7361697a

    if-eq v2, v4, :cond_46

    const v4, 0x7361696f

    if-eq v2, v4, :cond_46

    const v4, 0x73656e63

    if-eq v2, v4, :cond_46

    const v4, 0x75756964

    if-eq v2, v4, :cond_46

    const v4, 0x73626770

    if-eq v2, v4, :cond_46

    const v4, 0x73677064

    if-eq v2, v4, :cond_46

    const v4, 0x656c7374

    if-eq v2, v4, :cond_46

    const v4, 0x6d656864

    if-eq v2, v4, :cond_46

    if-ne v2, v3, :cond_45

    goto :goto_20

    :cond_45
    const/4 v2, 0x0

    goto :goto_21

    :cond_46
    :goto_20
    const/4 v2, 0x1

    :goto_21
    const-wide/32 v3, 0x7fffffff

    if-eqz v2, :cond_49

    .line 258
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_48

    .line 259
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_47

    .line 260
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 261
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 262
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v4, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    .line 263
    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x1

    .line 265
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_1f

    :cond_47
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    .line 266
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_48
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    .line 267
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 268
    :cond_49
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_4a

    const/4 v2, 0x0

    .line 269
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x1

    .line 270
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_1f

    :goto_22
    if-nez v6, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_4a
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    .line 271
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_4b
    const-string v0, "Atom size less than header length (unsupported)."

    .line 272
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2
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
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

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

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
