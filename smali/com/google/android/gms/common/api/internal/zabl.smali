.class public final Lcom/google/android/gms/common/api/internal/zabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final zab:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/zai;",
            ">;"
        }
    .end annotation
.end field

.field public final zac:Lcom/google/android/gms/common/api/Api$Client;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final zad:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final zae:Lcom/google/android/gms/common/api/internal/zaaa;

.field public final zaf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zal;",
            ">;"
        }
    .end annotation
.end field

.field public final zag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/zacc;",
            ">;"
        }
    .end annotation
.end field

.field public final zah:I

.field public final zai:Lcom/google/android/gms/common/api/internal/zaco;

.field public zaj:Z

.field public final zak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/internal/zabm;",
            ">;"
        }
    .end annotation
.end field

.field public zal:Lcom/google/android/gms/common/ConnectionResult;

.field public zam:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    .line 1
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaf:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zam:I

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/ClientSettings$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->build()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v5

    iget-object v1, p2, Lcom/google/android/gms/common/api/GoogleApi;->zad:Lcom/google/android/gms/common/api/Api;

    .line 8
    iget-object v2, v1, Lcom/google/android/gms/common/api/Api;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    const-string v1, "null reference"

    .line 9
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v3, p2, Lcom/google/android/gms/common/api/GoogleApi;->zab:Landroid/content/Context;

    iget-object v6, p2, Lcom/google/android/gms/common/api/GoogleApi;->zae:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v7, p0

    move-object v8, p0

    .line 11
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    .line 12
    iget-object v2, p2, Lcom/google/android/gms/common/api/GoogleApi;->zac:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13
    instance-of v3, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v3, :cond_0

    .line 14
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 15
    iput-object v2, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzA:Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    .line 16
    instance-of v2, v1, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    if-eqz v2, :cond_1

    .line 17
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 19
    iget-object v2, p2, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaaa;

    .line 21
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaaa;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 22
    iget v2, p2, Lcom/google/android/gms/common/api/GoogleApi;->zah:I

    .line 23
    iput v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    .line 24
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    .line 26
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 27
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaco;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/ClientSettings$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->build()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaco;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V

    .line 28
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    return-void

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaB()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdx;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzdx;-><init>(Lcom/google/android/gms/common/api/internal/zabl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 3
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaC(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabi;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zabi;-><init>(Lcom/google/android/gms/common/api/internal/zabl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zaB()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zah()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zaM(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaJ()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaE()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaK()V

    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zacc;

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zaC(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zah()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getLastDisconnectMessage()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The connection to Google Play services was lost"

    .line 5
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    const-string p1, " due to service disconnection."

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    const-string p1, " due to dead object exception."

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, " Last reason for disconnect: "

    .line 8
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    .line 10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 11
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zah(ZLcom/google/android/gms/common/api/Status;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 15
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v0, 0xb

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 20
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x1d4c0

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 23
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/google/android/gms/common/internal/zal;

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    .line 25
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    .line 27
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zacc;

    .line 28
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zaE()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zai;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/api/internal/zabl;->zaF(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 4
    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zaF(Lcom/google/android/gms/common/api/internal/zai;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/zac;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaG(Lcom/google/android/gms/common/api/internal/zai;)V

    return v1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/zac;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zabl;->zaN([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaG(Lcom/google/android/gms/common/api/internal/zai;)V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v3, v2, Lcom/google/android/gms/common/Feature;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4d

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, " could not execute call because it requires feature ("

    const-string v7, ", "

    invoke-static {v8, p1, v6, v3, v7}, Landroidx/room/InvalidationTracker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GoogleApiManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 10
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Z

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->zab(Lcom/google/android/gms/common/api/internal/zabl;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabm;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 12
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/common/api/internal/zabm;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/16 v3, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabm;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 16
    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 18
    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 23
    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 26
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v1, 0x10

    .line 27
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x1d4c0

    .line 29
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 30
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 31
    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    .line 32
    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 33
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    .line 36
    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap(Lcom/google/android/gms/common/ConnectionResult;I)Z

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 38
    :cond_3
    new-instance p0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zai;->zad(Ljava/lang/Exception;)V

    return v1
.end method

.method public final zaG(Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zap()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zai;->zae(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zai;->zaf(Lcom/google/android/gms/common/api/internal/zabl;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Error in GoogleApi implementation for client %s."

    .line 4
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->onConnectionSuspended(I)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string p1, "DeadObjectException thrown while running ApiCallRunner."

    .line 7
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public final zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_6

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 4
    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zai;

    if-eqz p3, :cond_3

    .line 7
    iget v1, v0, Lcom/google/android/gms/common/api/internal/zai;->zac:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zai;->zac(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/zai;->zad(Ljava/lang/Exception;)V

    .line 10
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    .line 11
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Status XOR exception should be null"

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zaI(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final zaJ()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    :cond_0
    return-void
.end method

.method public final zaK()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final zaL(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Ljava/util/Map;

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaK()V

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string p1, "Timing out service connection."

    .line 7
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return v3

    :cond_4
    return v1
.end method

.method public final zaM(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaf:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zal;

    .line 2
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaf:Ljava/util/Set;

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final zaN([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 8

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    new-array p0, v0, [Lcom/google/android/gms/common/Feature;

    :cond_1
    array-length v1, p0

    .line 2
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    aget-object v4, p0, v3

    .line 4
    iget-object v5, v4, Lcom/google/android/gms/common/Feature;->zza:Ljava/lang/String;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length p0, p1

    :goto_1
    if-ge v0, p0, :cond_5

    .line 6
    aget-object v1, p1, v0

    .line 7
    iget-object v3, v1, Lcom/google/android/gms/common/Feature;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zah()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/google/android/gms/common/internal/zal;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zal;->zaa:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaM(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 10
    instance-of v0, v0, Lcom/google/android/gms/common/internal/service/zap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 11
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 17
    :cond_1
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 18
    sget-object p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 20
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 21
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    .line 23
    invoke-virtual {p0, v2, p2, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 24
    iget-boolean p2, p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Z

    if-eqz p2, :cond_9

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 26
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaJ(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 27
    invoke-virtual {p0, p2, v2, v1}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 28
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 29
    :cond_5
    sget-object p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    .line 30
    monitor-enter p2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 31
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    .line 34
    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p2

    if-nez p2, :cond_8

    .line 35
    iget p2, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/16 v3, 0x12

    if-ne p2, v3, :cond_6

    .line 36
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    :cond_6
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 37
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 p2, 0x9

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 39
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 40
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1388

    .line 41
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 42
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaJ(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 44
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    .line 46
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 48
    :cond_9
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 49
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaJ(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 51
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 52
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    .line 53
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final zad(Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaF(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaK()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_3

    .line 8
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zam()V

    return-void
.end method

.method public final zae()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zah(ZLcom/google/android/gms/common/api/Status;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lcom/google/android/gms/common/api/internal/zah;

    .line 8
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/zabl;->zad(Lcom/google/android/gms/common/api/internal/zai;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->zaM(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zabk;-><init>(Lcom/google/android/gms/common/api/internal/zabl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V

    :cond_1
    return-void
.end method

.method public final zah()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final zam()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/google/android/gms/common/internal/zal;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/internal/zal;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const-string v1, "GoogleApiManager"

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "The service for "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 12
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabo;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zabo;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/ApiKey;)V

    .line 13
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    const-string v4, "null reference"

    .line 14
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v4, :cond_2

    .line 16
    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_2
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zaco;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 17
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 18
    iput-object v5, v4, Lcom/google/android/gms/common/internal/ClientSettings;->zaj:Ljava/lang/Integer;

    .line 19
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zaco;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v5, v3, Lcom/google/android/gms/common/api/internal/zaco;->zab:Landroid/content/Context;

    iget-object v6, v3, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    .line 20
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/common/api/internal/zaco;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 21
    iget-object v8, v7, Lcom/google/android/gms/common/internal/ClientSettings;->zai:Lcom/google/android/gms/signin/SignInOptions;

    move-object v9, v3

    move-object v10, v3

    .line 22
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    iput-object v1, v3, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zaco;->zae:Ljava/util/Set;

    if-eqz v4, :cond_4

    .line 23
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    .line 25
    check-cast v3, Lcom/google/android/gms/signin/internal/SignInClientImpl;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v4, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v4, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    const-string v5, "Connection progress callbacks cannot be null."

    .line 27
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    const/4 v4, 0x2

    .line 28
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp(ILandroid/os/IInterface;)V

    goto :goto_1

    .line 29
    :cond_4
    :goto_0
    iget-object v2, v3, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    new-instance v4, Lcom/google/mlkit/common/sdkinternal/zzi;

    .line 30
    invoke-direct {v4, v3}, Lcom/google/mlkit/common/sdkinternal/zzi;-><init>(Lcom/google/android/gms/common/api/internal/zaco;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    :cond_5
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 32
    invoke-interface {v2, v1}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 33
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 34
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v1

    .line 35
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 36
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final zap()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result p0

    return p0
.end method
