.class public final Lcom/google/android/play/core/assetpacks/zzbu;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zza:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzco;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbu;->zza:Lcom/google/android/play/core/internal/zzco;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbu;->zza:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/zzy;->zza(ILjava/lang/String;Ljava/lang/String;I)Lcom/google/android/play/core/tasks/zzm;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->await(Lcom/google/android/play/core/tasks/zzm;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v5, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v5

    .line 5
    :cond_0
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v5, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s"

    .line 7
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p2, Lcom/google/android/play/core/assetpacks/zzck;

    const-string p3, "Extractor was interrupted while waiting for chunk file."

    .line 9
    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p2

    :catch_1
    move-exception p0

    new-instance v5, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v4, v4, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    const-string p2, "Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s"

    .line 11
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2, p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v5
.end method
