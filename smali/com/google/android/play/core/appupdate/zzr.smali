.class public Lcom/google/android/play/core/appupdate/zzr;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Lcom/google/android/play/core/assetpacks/zzdd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Lcom/google/android/play/core/appupdate/zzq;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    .line 16
    new-instance p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 2
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 3
    iget-object v3, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-gt v3, v1, :cond_5

    .line 4
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    move-object v10, v6

    check-cast v10, Lcom/google/zxing/common/reedsolomon/GenericGF;

    add-int/lit8 v11, v3, -0x1

    check-cast v6, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 5
    iget v6, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int/2addr v11, v6

    .line 6
    iget-object v6, v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v6, v6, v11

    aput v6, v8, v4

    .line 7
    invoke-direct {v5, v7, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 8
    iget-object v6, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    iget-object v6, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 11
    array-length v7, v6

    .line 12
    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 13
    array-length v8, v5

    add-int v10, v7, v8

    add-int/lit8 v10, v10, -0x1

    .line 14
    new-array v10, v10, [I

    move v11, v9

    :goto_1
    if-ge v11, v7, :cond_2

    .line 15
    aget v12, v6, v11

    move v13, v9

    :goto_2
    if-ge v13, v8, :cond_1

    add-int v14, v11, v13

    .line 16
    aget v15, v10, v14

    iget-object v4, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, v5, v13

    .line 17
    invoke-virtual {v4, v12, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v4

    xor-int/2addr v4, v15

    .line 18
    aput v4, v10, v14

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 19
    :cond_2
    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v2, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v2, v4

    goto :goto_4

    .line 20
    :cond_3
    :goto_3
    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 21
    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 22
    :goto_4
    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    .line 23
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_5
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    return-object v0
.end method

.method public containsKey(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 1
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->loadBatch(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzcs;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzj;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzj;->zzb()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/android/play/core/appupdate/zzq;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzs;

    invoke-direct {v1, v0, p0}, Lcom/google/android/play/core/appupdate/zzq;-><init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzs;)V

    return-object v1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzde;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzde;->zzf:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 6
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzdb;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    .line 9
    :cond_1
    iget v4, v4, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    .line 10
    :goto_2
    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    if-ge v4, v5, :cond_0

    .line 11
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
