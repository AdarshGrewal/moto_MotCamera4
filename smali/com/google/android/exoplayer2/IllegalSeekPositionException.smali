.class public final Lcom/google/android/exoplayer2/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "windowIndex",
            "positionMs"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    return-void
.end method
