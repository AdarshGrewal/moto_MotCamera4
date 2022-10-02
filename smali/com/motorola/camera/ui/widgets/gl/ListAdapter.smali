.class public Lcom/motorola/camera/ui/widgets/gl/ListAdapter;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lcom/motorola/camera/ui/widgets/gl/textures/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->mObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z
    .locals 0

    .line 5
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 4
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/ui/widgets/gl/textures/Texture;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1
.end method

.method public clear()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final declared-synchronized notifyDataSetChanged()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    .line 2
    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    return-object p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
