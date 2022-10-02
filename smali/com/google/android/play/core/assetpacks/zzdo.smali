.class public final Lcom/google/android/play/core/assetpacks/zzdo;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/zzy;


# static fields
.field public static final zza:Lcom/google/android/play/core/appupdate/zzy;


# instance fields
.field public final zzc:Ljava/lang/String;

.field public final zzd:Lcom/google/android/play/core/assetpacks/zzbb;

.field public final zzf:Landroid/content/Context;

.field public final zzg:Lcom/google/android/play/core/assetpacks/zzed;

.field public final zzh:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final zzj:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "FakeAssetPackService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/zzco;Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzed;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/google/android/play/core/assetpacks/zzbb;",
            "Lcom/google/android/play/core/assetpacks/zzco;",
            "Landroid/content/Context;",
            "Lcom/google/android/play/core/assetpacks/zzed;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/zzeb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p3, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzj:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzf:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzg:Lcom/google/android/play/core/assetpacks/zzed;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzh:Lcom/google/android/play/core/internal/zzco;

    return-void
.end method

.method public static zzk(IJ)J
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    return-wide p1

    :cond_1
    const-wide/16 v0, 0x2

    div-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/lang/String;I)Lcom/google/android/play/core/tasks/zzm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/play/core/tasks/zzm;"
        }
    .end annotation

    const-string v0, "getChunkFileDescriptor failed"

    .line 1
    sget-object v1, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 v4, 0x2

    aput-object p3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v4, 0x3

    aput-object p4, v2, v4

    const-string p4, "getChunkFileDescriptor(session=%d, %s, %s, %d)"

    .line 2
    invoke-virtual {v1, p4, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3
    new-instance p4, Lcom/google/android/play/core/tasks/zzm;

    invoke-direct {p4}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/play/core/assetpacks/zzdo;->zzs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    array-length p2, p0

    move v1, v3

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    .line 5
    invoke-static {v2}, Lcom/google/android/play/core/internal/zzcj;->zza(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 p0, 0x10000000

    .line 6
    invoke-static {v2, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 7
    invoke-virtual {p4, p0}, Lcom/google/android/play/core/tasks/zzm;->zzb(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array p2, p1, [Ljava/lang/Object;

    aput-object p3, p2, v3

    const-string p3, "Local testing slice for \'%s\' not found."

    .line 9
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/play/core/common/LocalTestingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v3

    .line 10
    invoke-virtual {p2, v0, p1}, Lcom/google/android/play/core/appupdate/zzy;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 11
    invoke-virtual {p4, p0}, Lcom/google/android/play/core/tasks/zzm;->zza(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 12
    sget-object p2, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v3

    .line 13
    invoke-virtual {p2, v0, p1}, Lcom/google/android/play/core/appupdate/zzy;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/play/core/common/LocalTestingException;

    const-string p2, "Asset Slice file not found."

    .line 14
    invoke-direct {p1, p2, p0}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {p4, p1}, Lcom/google/android/play/core/tasks/zzm;->zza(Ljava/lang/Exception;)V

    :goto_1
    return-object p4
.end method

.method public final zzd(Ljava/util/Map;)Lcom/google/android/play/core/tasks/zzm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/play/core/tasks/zzm;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "syncPacks()"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p1, Lcom/google/android/play/core/tasks/zzm;

    invoke-direct {p1}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/zzm;->zzb(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final zze(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cancelDownload(%s)"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "keepAlive"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzg(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "notifyChunkTransferred"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzh(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzh:Lcom/google/android/play/core/internal/zzco;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzdk;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzdk;-><init>(Lcom/google/android/play/core/assetpacks/zzdo;ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi(I)V
    .locals 1

    .line 1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "notifySessionFailed"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzp(ILjava/lang/String;I)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/play/core/common/LocalTestingException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzg:Lcom/google/android/play/core/assetpacks/zzed;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/zzed;->zza()I

    move-result v1

    const-string v2, "app_version_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "session_id"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/play/core/assetpacks/zzdo;->zzs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v2, :cond_1

    .line 6
    aget-object v8, p1, v6

    .line 7
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v4, v9

    new-instance v9, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x3

    if-ne p3, v10, :cond_0

    new-instance v10, Landroid/content/Intent;

    .line 9
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v8}, Lcom/google/android/play/core/internal/zzcj;->zza(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "chunk_intents"

    .line 11
    invoke-static {v11, p2, v10}, Lcom/google/android/play/core/assetpacks/model/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v9, "uncompressed_hash_sha256"

    .line 13
    invoke-static {v9, p2, v10}, Lcom/google/android/play/core/assetpacks/model/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    new-array v11, v7, [Ljava/io/File;

    aput-object v8, v11, v3

    .line 14
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/play/core/assetpacks/zzdq;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "uncompressed_size"

    .line 16
    invoke-static {v7, p2, v10}, Lcom/google/android/play/core/assetpacks/model/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 18
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Lcom/google/android/play/core/common/LocalTestingException;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object v8, p2, v3

    const-string p3, "Could not digest file: %s."

    .line 21
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/play/core/common/LocalTestingException;

    const-string p2, "SHA256 algorithm not supported."

    .line 22
    invoke-direct {p1, p2, p0}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string/jumbo p1, "slice_ids"

    .line 23
    invoke-static {p1, p2}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "pack_version"

    .line 25
    invoke-static {p1, p2}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzg:Lcom/google/android/play/core/assetpacks/zzed;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/zzed;->zza()I

    move-result v1

    int-to-long v1, v1

    .line 27
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "status"

    .line 28
    invoke-static {p1, p2}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_code"

    .line 30
    invoke-static {p1, p2}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bytes_downloaded"

    .line 32
    invoke-static {p1, p2}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzdo;->zzk(IJ)J

    move-result-wide v8

    .line 33
    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "total_bytes_to_download"

    .line 34
    invoke-static {v1, p2}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    new-array v6, v7, [Ljava/lang/String;

    aput-object p2, v6, v3

    .line 36
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "pack_names"

    .line 37
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzdo;->zzk(IJ)J

    move-result-wide p2

    .line 38
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    .line 40
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzj:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/play/core/assetpacks/zzdl;

    .line 42
    invoke-direct {p3, p0, p1}, Lcom/google/android/play/core/assetpacks/zzdl;-><init>(Lcom/google/android/play/core/assetpacks/zzdo;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final zzs(Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/play/core/common/LocalTestingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdo;->zzc:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 3
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzdj;

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/zzdj;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    array-length v0, p0

    if-eqz v0, :cond_2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6
    aget-object v4, p0, v3

    .line 7
    invoke-static {v4}, Lcom/google/android/play/core/internal/zzcj;->zza(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "No master slice available for pack \'%s\'."

    .line 8
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "No APKs available for pack \'%s\'."

    .line 9
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Failed fetching APKs for pack \'%s\'."

    .line 11
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "Local testing directory \'%s\' not found."

    .line 13
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
