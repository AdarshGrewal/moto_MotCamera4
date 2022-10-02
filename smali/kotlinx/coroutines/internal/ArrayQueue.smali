.class public Lkotlinx/coroutines/internal/ArrayQueue;
.super Ljava/lang/Object;
.source "ArrayQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public elements:Ljava/lang/Object;

.field public head:I

.field public tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v0

    const/4 v0, 0x0

    aput p2, v1, v0

    .line 4
    const-class v0, B

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 6
    iput p2, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    return-void
.end method


# virtual methods
.method public get(II)B
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    aget-byte p0, p0, p1

    return p0
.end method

.method public set(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public set(IIZ)V
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v3, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    check-cast v3, [[B

    aget-object v3, v3, v2

    move v4, v1

    .line 4
    :goto_1
    iget v5, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    if-ge v4, v5, :cond_2

    .line 5
    aget-byte v5, v3, v4

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const-string v5, "  "

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v5, " 1"

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v5, " 0"

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
