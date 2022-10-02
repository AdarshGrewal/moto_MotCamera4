.class public Landroidx/fragment/app/FragmentStore;
.super Ljava/lang/Object;
.source "FragmentStore.java"


# instance fields
.field public mActive:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentStateManager;",
            ">;"
        }
    .end annotation
.end field

.field public mAdded:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 8
    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/play/core/assetpacks/zzm;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/google/android/play/core/assetpacks/zzm;-><init>(I)V

    iput-object p2, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    return-void
.end method


# virtual methods
.method public addFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 5
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized batchDraw([F[F)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3
    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    if-eqz v6, :cond_1

    .line 4
    iget-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPreDraw()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    iget-object v7, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast v7, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_5

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    .line 7
    iget-object v4, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast v4, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length p2, p2

    if-ge v2, p2, :cond_4

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 p2, 0x0

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPostDraw(Lcom/motorola/camera/ui/widgets/gl/Shader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 11
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public burpActive()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public declared-synchronized clearDrawList()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 2
    iput-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    move v1, v0

    .line 3
    :goto_1
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsActiveFragment(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dispatchStateChange(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    if-eqz v1, :cond_0

    .line 3
    iput p1, v1, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    if-eqz v0, :cond_2

    .line 5
    iput p1, v0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentStateManager;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized getDrawList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 4
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized setDrawList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    .line 2
    array-length p1, p1

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
