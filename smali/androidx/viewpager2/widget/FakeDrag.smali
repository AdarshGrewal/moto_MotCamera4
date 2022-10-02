.class public final Landroidx/viewpager2/widget/FakeDrag;
.super Ljava/lang/Object;
.source "FakeDrag.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Ljavax/inject/Provider;
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field public mRecyclerView:Ljava/lang/Object;

.field public mScrollEventAdapter:Ljava/lang/Object;

.field public mViewPager:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v1, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object p0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 1
    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v2, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->persist(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 2
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    check-cast v1, Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/common/zza;

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzeb;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbh;

    check-cast v1, Lcom/google/android/play/core/assetpacks/zzed;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/play/core/assetpacks/zzeb;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/assetpacks/zzed;Lcom/google/android/play/core/common/zza;)V

    return-object v2
.end method
