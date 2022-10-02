.class public abstract Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# instance fields
.field public final formats:[Lcom/google/android/exoplayer2/Format;

.field public final group:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public hashCode:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "tracks",
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length p3, p2

    const/4 v0, 0x0

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 5
    array-length p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    .line 6
    new-array p3, p3, [Lcom/google/android/exoplayer2/Format;

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    move p3, v0

    .line 7
    :goto_1
    array-length v1, p2

    if-ge p3, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget v2, p2, p3

    .line 9
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v2, v3, v2

    .line 10
    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    sget-object p3, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$$ExternalSyntheticLambda0;

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 12
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    move p2, v0

    .line 13
    :goto_2
    iget p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge p2, p3, :cond_4

    .line 14
    iget-object p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, p2

    move v2, v0

    .line 15
    :goto_3
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 16
    aget-object v3, v3, v2

    if-ne v1, v3, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    .line 17
    :goto_4
    aput v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 18
    :cond_4
    new-array p0, p3, [J

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer2/Format;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getSelectedFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    .line 3
    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    return p0
.end method

.method public final length()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    array-length p0, p0

    return p0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackSpeed"
        }
    .end annotation

    return-void
.end method
