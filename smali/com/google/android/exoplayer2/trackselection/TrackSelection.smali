.class public interface abstract Lcom/google/android/exoplayer2/trackselection/TrackSelection;
.super Ljava/lang/Object;
.source "TrackSelection.java"


# virtual methods
.method public abstract getFormat(I)Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getIndexInTrackGroup(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
.end method

.method public abstract length()I
.end method
