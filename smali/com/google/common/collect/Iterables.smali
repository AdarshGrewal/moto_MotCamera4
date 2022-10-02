.class public final Lcom/google/common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# direct methods
.method public static getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p0, Lcom/google/common/collect/Sets$2;

    .line 2
    new-instance v0, Lcom/google/common/collect/Sets$2$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$2$1;-><init>(Lcom/google/common/collect/Sets$2;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
