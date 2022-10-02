.class public final Lcom/google/android/exoplayer2/Player$Commands$Builder;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    return-void
.end method


# virtual methods
.method public addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commands"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "condition"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 2
    iget-boolean p2, v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iget-object p2, v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;Lcom/google/android/exoplayer2/Player$1;)V

    return-object v0
.end method
