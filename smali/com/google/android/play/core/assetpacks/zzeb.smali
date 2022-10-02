.class public final Lcom/google/android/play/core/assetpacks/zzeb;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final zza:Lcom/google/android/play/core/appupdate/zzy;


# instance fields
.field public final zzb:Lcom/google/android/play/core/assetpacks/zzbh;

.field public final zzc:Lcom/google/android/play/core/assetpacks/zzed;

.field public final zzd:Lcom/google/android/play/core/common/zza;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "PackMetadataManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzeb;->zza:Lcom/google/android/play/core/appupdate/zzy;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/assetpacks/zzed;Lcom/google/android/play/core/common/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzc:Lcom/google/android/play/core/assetpacks/zzed;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzd:Lcom/google/android/play/core/common/zza;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzd:Lcom/google/android/play/core/common/zza;

    invoke-virtual {v0}, Lcom/google/android/play/core/common/zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzc:Lcom/google/android/play/core/assetpacks/zzed;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzed;->zza()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzc(Ljava/lang/String;)J

    move-result-wide v3

    .line 7
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p0

    const-string v3, "properties.dat"

    invoke-direct {v5, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/FileInputStream;

    .line 10
    invoke-direct {p0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v3, Ljava/util/Properties;

    .line 11
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 12
    invoke-virtual {v3, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const-string p0, "moduleVersionTag"

    .line 14
    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    return-object p0

    :catchall_0
    move-exception v0

    .line 16
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 17
    :catch_1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzeb;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Failed to read pack version tag for pack %s"

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    :cond_1
    new-instance v0, Ljava/util/Properties;

    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "moduleVersionTag"

    .line 4
    invoke-virtual {v0, v1, p5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p0

    const-string p1, "properties.dat"

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 9
    invoke-direct {p5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v0, p5, p0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p0
.end method
