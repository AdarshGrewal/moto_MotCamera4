.class public final Lcom/google/mlkit/common/internal/model/zzg;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 4

    .line 1
    const-class p1, Lkotlin/io/ExceptionsKt;

    monitor-enter p1

    :try_start_0
    const-string v0, "common"

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_2

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzje;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_common/zzje;-><init>(Ljava/lang/String;ZI)V

    .line 6
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lkotlin/io/ExceptionsKt;->zza$com$google$android$gms$internal$mlkit_common$zzkc:Lcom/google/android/gms/internal/mlkit_common/zzkb;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzkb;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzkb;-><init>()V

    sput-object v0, Lkotlin/io/ExceptionsKt;->zza$com$google$android$gms$internal$mlkit_common$zzkc:Lcom/google/android/gms/internal/mlkit_common/zzkb;

    :cond_1
    sget-object v0, Lkotlin/io/ExceptionsKt;->zza$com$google$android$gms$internal$mlkit_common$zzkc:Lcom/google/android/gms/internal/mlkit_common/zzkb;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzjr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit p1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_3
    monitor-exit p1

    throw p0

    .line 12
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_3

    const-string v0, " enableFirelog"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v3, :cond_4

    const-string v0, " firelogEventType"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1c

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0
.end method
