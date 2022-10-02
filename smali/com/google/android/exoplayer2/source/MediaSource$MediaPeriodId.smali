.class public final Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
.super Lcom/google/android/exoplayer2/source/MediaPeriodId;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriodId"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periodUid"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "adGroupIndex",
            "adIndexInAdGroup",
            "windowSequenceNumber"
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "windowSequenceNumber",
            "nextAdGroupIndex"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method


# virtual methods
.method public copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPeriodUid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;

    iget v4, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v5, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    move-object p0, v1

    .line 4
    :goto_0
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    return-object v0
.end method
