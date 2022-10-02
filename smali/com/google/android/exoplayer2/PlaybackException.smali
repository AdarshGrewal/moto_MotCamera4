.class public Lcom/google/android/exoplayer2/PlaybackException;
.super Ljava/lang/Exception;
.source "PlaybackException.java"


# instance fields
.field public final errorCode:I

.field public final timestampMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "cause",
            "errorCode",
            "timestampMs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput p3, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    .line 3
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    return-void
.end method
