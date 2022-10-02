.class public Lcom/google/common/collect/Sets$2$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/common/collect/Sets$2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->this$0:Lcom/google/common/collect/Sets$2;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    return-void
.end method
