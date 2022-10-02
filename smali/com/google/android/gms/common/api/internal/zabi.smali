.class public final Lcom/google/android/gms/common/api/internal/zabi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zaa:I

.field public final zab:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zabi;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabl;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zabi;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabi;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabl;

    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaC(I)V

    return-void

    .line 3
    :goto_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 4
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 5
    :try_start_0
    iget v2, p0, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
