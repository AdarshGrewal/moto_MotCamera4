.class public final Lcom/google/android/exoplayer2/Format$Builder;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public accessibilityChannel:I

.field public averageBitrate:I

.field public channelCount:I

.field public codecs:Ljava/lang/String;

.field public colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public containerMimeType:Ljava/lang/String;

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public encoderDelay:I

.field public encoderPadding:I

.field public exoMediaCryptoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field public frameRate:F

.field public height:I

.field public id:Ljava/lang/String;

.field public initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public maxInputSize:I

.field public metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public pcmEncoding:I

.field public peakBitrate:I

.field public pixelWidthHeightRatio:F

.field public projectionData:[B

.field public roleFlags:I

.field public rotationDegrees:I

.field public sampleMimeType:Ljava/lang/String;

.field public sampleRate:I

.field public selectionFlags:I

.field public stereoMode:I

.field public subsampleOffsetUs:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    const-wide v1, 0x7fffffffffffffffL

    .line 5
    iput-wide v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 13
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 17
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 19
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 20
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 21
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 22
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 23
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 24
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 25
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 26
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 27
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 28
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 29
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 30
    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 31
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 32
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 33
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 34
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 35
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 36
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 37
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 38
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 39
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 40
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 41
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 42
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 43
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 44
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iput p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 45
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method

.method public setId(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method
