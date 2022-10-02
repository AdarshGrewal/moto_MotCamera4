.class public final synthetic Lcom/google/android/gms/common/api/internal/zabz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final zaa:Ljava/lang/Object;

.field public final zab:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabz;->zaa:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabz;->zab:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabz;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/LazySet;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabz;->zab:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Provider;

    sget v1, Lcom/google/firebase/components/ComponentRuntime;->$r8$clinit:I

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
