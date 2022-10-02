.class public abstract Lcom/google/android/gms/common/internal/GmsClient;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/BaseGmsClient<",
        "TT;>;",
        "Lcom/google/android/gms/common/api/Api$Client;"
    }
.end annotation


# instance fields
.field public final zab:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final zac:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v10, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 1
    sget-object v3, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzb:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/android/gms/common/internal/zzq;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/internal/zzq;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 3
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 4
    sget-object v3, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    sget-object v5, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    const-string v3, "null reference"

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "null reference"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v7, Lcom/google/android/gms/common/internal/zah;

    invoke-direct {v7, v1}, Lcom/google/android/gms/common/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;)V

    .line 8
    new-instance v8, Lcom/google/android/gms/common/internal/zai;

    invoke-direct {v8, v2}, Lcom/google/android/gms/common/internal/zai;-><init>(Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 9
    iget-object v9, v10, Lcom/google/android/gms/common/internal/ClientSettings;->zah:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 10
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    .line 11
    iget-object v1, v10, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Landroid/accounts/Account;

    .line 13
    iget-object v1, v10, Lcom/google/android/gms/common/internal/ClientSettings;->zac:Ljava/util/Set;

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Scope;

    .line 15
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/common/internal/GmsClient;->zab:Ljava/util/Set;

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Landroid/accounts/Account;

    return-object p0
.end method

.method public final getScopes()Ljava/util/Set;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zab:Ljava/util/Set;

    return-object p0
.end method

.method public getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zab:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method
