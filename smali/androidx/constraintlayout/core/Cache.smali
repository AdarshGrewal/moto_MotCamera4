.class public Landroidx/constraintlayout/core/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final synthetic $r8$classId:I

.field public arrayRowPool:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/assetpacks/zzdg;"
        }
    .end annotation
.end field

.field public mIndexedVariables:Ljava/lang/Object;

.field public optimizedArrayRowPool:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/assetpacks/zzdg;"
        }
    .end annotation
.end field

.field public solverVariablePool:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/assetpacks/zzdg;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/core/Cache;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/play/core/assetpacks/zzdg;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/google/android/play/core/assetpacks/zzdg;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/google/android/play/core/assetpacks/zzdg;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    const/16 p1, 0x20

    new-array p1, p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroidx/collection/LongSparseArray;

    const/16 v0, 0xa

    .line 10
    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    .line 12
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/constraintlayout/core/Cache;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    .line 17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/Cache;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    .line 20
    iput-object p2, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    .line 21
    iput-object p3, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    .line 22
    iput-object p4, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;
    .locals 4

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    check-cast v1, Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v2, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    check-cast v2, Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget-object p0, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 3
    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/Cache;->get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/Cache;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "VideoSession{Session video size: "

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Current Capture Video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/Cache;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Next capture video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
