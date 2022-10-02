.class public final Lcom/google/android/exoplayer2/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# instance fields
.field public enabled:Z

.field public stayAwake:Z

.field public wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field public final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final updateWifiLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->enabled:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->stayAwake:Z

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :goto_0
    return-void
.end method
