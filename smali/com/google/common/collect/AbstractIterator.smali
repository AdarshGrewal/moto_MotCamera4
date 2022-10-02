.class public abstract Lcom/google/common/collect/AbstractIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_6

    .line 2
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v0, 0x3

    .line 3
    iput v2, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    .line 4
    move-object v2, p0

    check-cast v2, Lcom/google/common/collect/Sets$2$1;

    .line 5
    :cond_1
    iget-object v4, v2, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v4, v2, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    iget-object v5, v2, Lcom/google/common/collect/Sets$2$1;->this$0:Lcom/google/common/collect/Sets$2;

    iget-object v5, v5, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8
    :cond_2
    iput v0, v2, Lcom/google/common/collect/AbstractIterator;->state:I

    const/4 v4, 0x0

    .line 9
    :goto_1
    iput-object v4, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 10
    iget v2, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    if-eq v2, v0, :cond_3

    .line 11
    iput v1, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    return v1

    :cond_4
    return v3

    :cond_5
    return v1

    .line 12
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
