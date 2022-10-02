.class public final Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# instance fields
.field public final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final flags:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 2
    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public createPayloadReader(ILcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "esInfo"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/16 v2, 0x15

    if-eq p1, v2, :cond_d

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v1, 0x24

    if-eq p1, v1, :cond_a

    const/16 v1, 0x59

    if-eq p1, v1, :cond_9

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_8

    const/16 v1, 0xac

    if-eq p1, v1, :cond_7

    const/16 v1, 0x101

    if-eq p1, v1, :cond_6

    const/16 v1, 0x81

    if-eq p1, v1, :cond_5

    const/16 v1, 0x82

    if-eq p1, v1, :cond_4

    const/16 v1, 0x86

    if-eq p1, v1, :cond_2

    const/16 v1, 0x87

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    return-object v3

    .line 1
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;

    iget-object p1, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_0
    return-object v3

    .line 3
    :pswitch_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 6
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 p1, 0x0

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_1
    return-object v3

    :cond_2
    const/16 p1, 0x10

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string p1, "application/x-scte35"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    :goto_2
    return-object v3

    :cond_4
    const/16 p1, 0x40

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-nez p0, :cond_8

    return-object v3

    .line 11
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 12
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/vnd.dvb.ait"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    return-object p0

    .line 13
    :cond_7
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 14
    :cond_8
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 15
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 16
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;

    .line 17
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 19
    :cond_b
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 20
    :cond_c
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;

    .line 21
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p2

    const/16 v1, 0x8

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_3
    return-object v3

    .line 24
    :cond_d
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 25
    :cond_e
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 26
    :cond_f
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    .line 27
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    .line 28
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "esInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    .line 4
    array-length v0, p1

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sub-int v3, v0, v2

    if-lez v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    .line 6
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v4

    const/16 v5, 0x86

    const/4 v6, 0x1

    if-ne v2, v5, :cond_7

    .line 8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v2, v4, 0x1

    .line 9
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v4, v4, 0x1f

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_7

    const/4 v7, 0x3

    .line 10
    sget-object v8, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, v7

    add-int/lit8 v7, v2, 0x1

    .line 12
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v8, v2, 0x80

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    if-eqz v8, :cond_2

    and-int/lit8 v2, v2, 0x3f

    const-string v10, "application/cea-708"

    goto :goto_3

    :cond_2
    const-string v10, "application/cea-608"

    move v2, v6

    :goto_3
    add-int/lit8 v11, v7, 0x1

    .line 13
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    add-int/2addr v11, v6

    if-ltz v11, :cond_3

    if-gt v11, v0, :cond_3

    move v12, v6

    goto :goto_4

    :cond_3
    move v12, v1

    .line 14
    :goto_4
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v12, 0x0

    if-eqz v8, :cond_6

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_5

    :cond_4
    move v7, v1

    :goto_5
    if-eqz v7, :cond_5

    new-array v7, v6, [B

    aput-byte v6, v7, v1

    goto :goto_6

    :cond_5
    new-array v7, v6, [B

    aput-byte v1, v7, v1

    .line 15
    :goto_6
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 16
    :cond_6
    new-instance v7, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 17
    iput-object v10, v7, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 18
    iput-object v9, v7, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 19
    iput v2, v7, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 20
    iput-object v12, v7, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 21
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 22
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v2, v11

    goto :goto_1

    :cond_7
    if-ltz v3, :cond_8

    if-gt v3, v0, :cond_8

    goto :goto_7

    :cond_8
    move v6, v1

    .line 23
    :goto_7
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    move v2, v3

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public final isSet(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
