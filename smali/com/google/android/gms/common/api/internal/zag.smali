.class public final Lcom/google/android/gms/common/api/internal/zag;
.super Lcom/google/android/gms/common/api/internal/zac;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/zac;"
    }
.end annotation


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final zab:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final zad:Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "TResultT;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;",
            "Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zac;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zag;->zad:Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    .line 2
    iget-boolean p0, p2, Lcom/google/android/gms/common/api/internal/TaskApiCall;->zab:Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/TaskApiCall;->zaa:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zabl;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/TaskApiCall;->zab:Z

    return p0
.end method

.method public final zac(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zad:Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    new-instance p0, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ResolvableApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 5
    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final zad(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final zae(Lcom/google/android/gms/common/api/internal/zaaa;Z)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    .line 4
    new-instance v0, Lcom/adobe/xmp/impl/QName;

    invoke-direct {v0, p1, p0}, Lcom/adobe/xmp/impl/QName;-><init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    iget-object p1, p2, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    new-instance v1, Lcom/google/android/gms/tasks/zzj;

    .line 7
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    return-void
.end method

.method public final zaf(Lcom/google/android/gms/common/api/internal/zabl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zai;->zah(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zag;->zac(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p0

    .line 7
    throw p0
.end method
