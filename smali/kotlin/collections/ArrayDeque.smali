.class public final Lkotlin/collections/ArrayDeque;
.super Lkotlin/collections/AbstractMutableList;
.source "ArrayDeque.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,583:1\n467#1,51:584\n467#1,51:635\n37#2,2:686\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n462#1:584,51\n464#1:635,51\n47#1:686,2\n*E\n"
.end annotation


# static fields
.field public static final emptyElementData:[Ljava/lang/Object;


# instance fields
.field public elementData:[Ljava/lang/Object;

.field public head:I

.field public size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    sget-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method public static final newCapacity$kotlin_stdlib(II)I
    .locals 2

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    sub-int v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    const v0, 0x7ffffff7

    sub-int v1, p0, v0

    if-lez v1, :cond_2

    if-le p1, v0, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    move p0, v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    if-ltz p1, :cond_7

    if-gt p1, v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    add-int/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 6
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 7
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 8
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    add-int/2addr p1, v0

    .line 9
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 12
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v1, p1

    .line 13
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v1, v3, :cond_2

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 14
    :cond_2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v2

    add-int/2addr v2, v0

    shr-int/2addr v2, v0

    const/4 v3, 0x0

    if-ge p1, v2, :cond_4

    .line 15
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result p1

    .line 16
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result v1

    .line 17
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt p1, v2, :cond_3

    .line 18
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v1

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    .line 19
    invoke-static {v3, v3, v2, v4, v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_3
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    array-length v6, v4

    invoke-static {v4, v4, v5, v2, v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 21
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, v2

    sub-int/2addr v4, v0

    aget-object v5, v2, v3

    aput-object v5, v2, v4

    add-int/lit8 v4, p1, 0x1

    .line 22
    invoke-static {v2, v2, v3, v0, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 23
    :goto_0
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, v2, p1

    .line 24
    iput v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    .line 26
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v2, p1

    .line 27
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, p1

    if-lt v2, v4, :cond_5

    array-length v4, p1

    sub-int/2addr v2, v4

    :cond_5
    if-ge v1, v2, :cond_6

    add-int/lit8 v3, v1, 0x1

    .line 28
    invoke-static {p1, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_6
    invoke-static {p1, p1, v0, v3, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-object v2, p1, v2

    aput-object v2, p1, v3

    add-int/lit8 v2, v1, 0x1

    .line 31
    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {p1, p1, v2, v1, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 32
    :goto_1
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 33
    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    add-int/2addr p1, v0

    .line 34
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void

    .line 35
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-ltz p1, :cond_e

    if-gt p1, v0, :cond_e

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 6
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 7
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, v2

    .line 8
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, v3

    if-lt v0, v4, :cond_2

    array-length v4, v3

    sub-int/2addr v0, v4

    :cond_2
    add-int/2addr v2, p1

    .line 9
    array-length v4, v3

    if-lt v2, v4, :cond_3

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 10
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 11
    iget v4, p0, Lkotlin/collections/ArrayDeque;->size:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_9

    .line 12
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_6

    if-ltz v0, :cond_4

    .line 13
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v1, v0, p1, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_4
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    .line 15
    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_5

    .line 16
    invoke-static {v4, v4, v0, p1, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_5
    add-int v6, p1, v7

    .line 17
    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v4, v7

    invoke-static {p1, p1, v1, v4, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_6
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    if-lt v3, v2, :cond_7

    .line 20
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_7
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {p1, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 23
    :goto_0
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_8

    .line 24
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v2, p1

    .line 25
    :cond_8
    invoke-virtual {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    goto :goto_2

    :cond_9
    add-int p1, v2, v3

    if-ge v2, v0, :cond_c

    add-int/2addr v3, v0

    .line 26
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_a

    .line 27
    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 28
    :cond_a
    array-length v6, v4

    if-lt p1, v6, :cond_b

    .line 29
    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_b
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    .line 31
    invoke-static {v4, v4, v1, v3, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_c
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v4, v4, v3, v1, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_d

    .line 35
    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 36
    :cond_d
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 38
    :goto_1
    invoke-virtual {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    :goto_2
    return v5

    .line 39
    :cond_e
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 42
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 43
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 44
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v1, v0

    .line 45
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v0

    if-lt v1, v2, :cond_1

    array-length v0, v0

    sub-int/2addr v1, v0

    .line 46
    :cond_1
    invoke-virtual {p0, v1, p1}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 3
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    .line 5
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v2, v1

    .line 6
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, v1

    if-lt v2, v3, :cond_0

    array-length v1, v1

    sub-int/2addr v2, v1

    .line 7
    :cond_0
    aput-object p1, v0, v2

    .line 8
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 9
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method public clear()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 2
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    array-length v3, v2

    sub-int/2addr v0, v3

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v1, v0, :cond_1

    .line 4
    invoke-static {v2, v4, v1, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    array-length v5, v1

    invoke-static {v1, v4, v2, v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 7
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v4, v3, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 8
    :cond_2
    :goto_0
    iput v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 9
    iput v3, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final copyCollectionElements(ILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-ge p1, v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 5
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    :goto_2
    if-ge p1, v1, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 8
    :cond_3
    :goto_3
    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method public final decremented(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, -0x1

    :goto_0
    return p0
.end method

.method public final ensureCapacity(I)V
    .locals 4

    if-ltz p1, :cond_3

    .line 1
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 3
    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void

    .line 4
    :cond_2
    array-length v0, v0

    invoke-static {v0, p1}, Lkotlin/collections/ArrayDeque;->newCapacity$kotlin_stdlib(II)I

    move-result p1

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 8
    iput v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 9
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Deque is too big."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 2
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    .line 3
    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p0

    if-lt v0, p1, :cond_0

    array-length p1, p0

    sub-int/2addr v0, p1

    .line 4
    :cond_0
    aget-object p0, p0, v0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSize()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/collections/ArrayDeque;->size:I

    return p0
.end method

.method public final incremented(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 2
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    array-length v3, v2

    sub-int/2addr v0, v3

    :cond_0
    if-ge v1, v0, :cond_2

    :goto_0
    if-ge v1, v0, :cond_6

    .line 4
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    :goto_1
    sub-int/2addr v1, p0

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lt v1, v0, :cond_6

    .line 5
    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_4

    .line 6
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 7
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v1, p1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 2
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    array-length v2, v2

    sub-int/2addr v0, v2

    :cond_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_6

    .line 4
    :goto_0
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    :goto_1
    sub-int/2addr v0, p0

    return v0

    :cond_1
    if-eq v0, v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-le v1, v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 5
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 6
    :cond_4
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt v0, v1, :cond_6

    .line 7
    :goto_3
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_5
    if-eq v0, v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 3
    array-length v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    iget v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 5
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v2, v4

    .line 6
    array-length v5, v0

    if-lt v2, v5, :cond_2

    array-length v5, v0

    sub-int/2addr v2, v5

    :cond_2
    const/4 v5, 0x0

    if-ge v4, v2, :cond_5

    move v0, v4

    :goto_1
    if-ge v4, v2, :cond_4

    .line 7
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 8
    aget-object v6, v6, v4

    .line 9
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_3

    .line 10
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    .line 11
    aput-object v6, v7, v0

    move v0, v8

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 13
    invoke-static {p1, v5, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_7

    .line 14
    :cond_5
    array-length v0, v0

    move v7, v1

    move v6, v4

    :goto_3
    if-ge v4, v0, :cond_7

    .line 15
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 16
    aget-object v9, v8, v4

    .line 17
    aput-object v5, v8, v4

    .line 18
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_6

    .line 19
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    .line 20
    aput-object v9, v8, v6

    move v6, v10

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 21
    :cond_7
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, v0

    if-lt v6, v4, :cond_8

    array-length v0, v0

    sub-int/2addr v6, v0

    :cond_8
    move v0, v6

    :goto_5
    if-ge v1, v2, :cond_a

    .line 22
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 23
    aget-object v6, v4, v1

    .line 24
    aput-object v5, v4, v1

    .line 25
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_9

    .line 26
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 27
    aput-object v6, v4, v0

    .line 28
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v0

    goto :goto_6

    :cond_9
    move v7, v3

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v7

    :goto_7
    if-eqz v1, :cond_c

    .line 29
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_b

    .line 30
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    .line 31
    :cond_b
    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    :cond_c
    :goto_8
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    if-ltz p1, :cond_8

    if-ge p1, v0, :cond_8

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 6
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 7
    aget-object v2, v1, p1

    .line 8
    aput-object v0, v1, p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 10
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 11
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-object v2

    .line 12
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ArrayDeque is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v1, p1

    .line 14
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v1, v3, :cond_3

    array-length v3, v2

    sub-int/2addr v1, v3

    .line 15
    :cond_3
    aget-object v2, v2, v1

    .line 16
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    const/4 v5, 0x0

    if-ge p1, v3, :cond_5

    .line 17
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt v1, p1, :cond_4

    .line 18
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v3, v5, p1, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {p1, p1, v4, v5, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, p1

    sub-int/2addr v1, v4

    aget-object v1, p1, v1

    aput-object v1, p1, v5

    .line 21
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/lit8 v3, v1, 0x1

    array-length v5, p1

    sub-int/2addr v5, v4

    invoke-static {p1, p1, v3, v1, v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 22
    :goto_0
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    aput-object v0, p1, v1

    .line 23
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    .line 25
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v3, p1

    .line 26
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, p1

    if-lt v3, v6, :cond_6

    array-length v6, p1

    sub-int/2addr v3, v6

    :cond_6
    if-gt v1, v3, :cond_7

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, 0x1

    .line 27
    invoke-static {p1, p1, v1, v5, v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_7
    add-int/lit8 v6, v1, 0x1

    .line 28
    array-length v7, p1

    invoke-static {p1, p1, v1, v6, v7}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, p1

    sub-int/2addr v1, v4

    aget-object v6, p1, v5

    aput-object v6, p1, v1

    add-int/lit8 v1, v3, 0x1

    .line 30
    invoke-static {p1, p1, v5, v4, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 31
    :goto_1
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object v0, p1, v3

    .line 32
    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    sub-int/2addr p1, v4

    .line 33
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-object v2

    .line 34
    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    .line 3
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v0

    if-lt v1, v2, :cond_0

    array-length v2, v0

    sub-int/2addr v1, v2

    .line 5
    :cond_0
    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 6
    aput-object v3, v0, v1

    .line 7
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 8
    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-object v2

    .line 9
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ArrayDeque is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 3
    array-length v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    iget v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 5
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v2, v4

    .line 6
    array-length v5, v0

    if-lt v2, v5, :cond_2

    array-length v5, v0

    sub-int/2addr v2, v5

    :cond_2
    const/4 v5, 0x0

    if-ge v4, v2, :cond_5

    move v0, v4

    :goto_1
    if-ge v4, v2, :cond_4

    .line 7
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 8
    aget-object v6, v6, v4

    .line 9
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    .line 11
    aput-object v6, v7, v0

    move v0, v8

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 13
    invoke-static {p1, v5, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_7

    .line 14
    :cond_5
    array-length v0, v0

    move v7, v1

    move v6, v4

    :goto_3
    if-ge v4, v0, :cond_7

    .line 15
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 16
    aget-object v9, v8, v4

    .line 17
    aput-object v5, v8, v4

    .line 18
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 19
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    .line 20
    aput-object v9, v8, v6

    move v6, v10

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 21
    :cond_7
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, v0

    if-lt v6, v4, :cond_8

    array-length v0, v0

    sub-int/2addr v6, v0

    :cond_8
    move v0, v6

    :goto_5
    if-ge v1, v2, :cond_a

    .line 22
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 23
    aget-object v6, v4, v1

    .line 24
    aput-object v5, v4, v1

    .line 25
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 26
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 27
    aput-object v6, v4, v0

    .line 28
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v0

    goto :goto_6

    :cond_9
    move v7, v3

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v7

    :goto_7
    if-eqz v1, :cond_c

    .line 29
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_b

    .line 30
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    .line 31
    :cond_b
    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    :cond_c
    :goto_8
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 2
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    .line 3
    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p0

    if-lt v0, p1, :cond_0

    array-length p1, p0

    sub-int/2addr v0, p1

    .line 4
    :cond_0
    aget-object p1, p0, v0

    .line 5
    aput-object p2, p0, v0

    return-object p1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    const-string v1, "reference"

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 8
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, v3

    .line 9
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v2, v1

    sub-int/2addr v0, v2

    :cond_1
    move v4, v0

    if-ge v3, v4, :cond_2

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, v1

    move-object v1, p1

    .line 10
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 14
    :cond_3
    :goto_1
    array-length v0, p1

    .line 15
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p0

    const/4 v0, 0x0

    .line 17
    aput-object v0, p1, p0

    :cond_4
    return-object p1
.end method
