.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzi;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 2
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zza:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-static {v0, p0}, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zze(Ljava/util/Deque;Ljava/lang/Runnable;)V

    return-void

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaco;

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    .line 6
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
