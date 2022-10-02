.class public final Lcom/google/android/play/core/assetpacks/zzcf;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final zza:Lcom/google/android/play/core/appupdate/zzy;


# instance fields
.field public final zzb:[B

.field public final zzc:Lcom/google/android/play/core/assetpacks/zzbh;

.field public final zzd:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;"
        }
    .end annotation
.end field

.field public final zze:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field public final zzf:Lcom/google/android/play/core/assetpacks/zzco;

.field public final zzg:Lcom/google/android/play/core/assetpacks/zzeb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "ExtractChunkTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/zzbh;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzbb;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/zzco;",
            "Lcom/google/android/play/core/assetpacks/zzeb;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzd:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zze:Lcom/google/android/play/core/internal/zzco;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzf:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzce;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v9, Lcom/google/android/play/core/assetpacks/zzen;

    iget-object v10, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    iget v12, v1, Lcom/google/android/play/core/assetpacks/zzce;->zza:I

    iget-wide v13, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzb:J

    iget-object v15, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move v5, v12

    move-wide v6, v13

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/zzen;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Ljava/lang/String;IJLjava/lang/String;)V

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-wide v5, v13

    move-object v7, v15

    .line 2
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/zzbh;->zzo(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x3

    :try_start_0
    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzj:Ljava/io/InputStream;

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzce;->zze:I

    const/16 v15, 0x2000

    if-eq v3, v11, :cond_1

    move-object v8, v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 5
    invoke-direct {v3, v2, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, v3

    :goto_0
    :try_start_1
    iget v2, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    const/16 v16, 0x0

    if-lez v2, :cond_e

    .line 6
    invoke-virtual {v9}, Lcom/google/android/play/core/assetpacks/zzen;->zzb()Lcom/google/android/play/core/assetpacks/zzem;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 7
    iget v3, v3, Lcom/google/android/play/core/assetpacks/zzbp;->zze:I

    .line 8
    iget v4, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_d

    .line 9
    move-object v3, v2

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 10
    iget v3, v3, Lcom/google/android/play/core/assetpacks/zzbp;->zza:I

    if-eq v3, v11, :cond_8

    if-eq v3, v10, :cond_6

    if-ne v3, v14, :cond_5

    .line 11
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v4, "Resuming central directory from last chunk."

    new-array v5, v12, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v3, v4, v5}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 13
    iget-wide v2, v2, Lcom/google/android/play/core/assetpacks/zzbp;->zzc:J

    .line 14
    invoke-virtual {v9}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    .line 15
    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 16
    :try_start_2
    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_2
    iget-object v2, v9, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    .line 17
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v3, v9, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    .line 18
    invoke-virtual {v5, v3, v12, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eq v2, v15, :cond_2

    .line 19
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/zzce;->zza()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v13, v8

    goto/16 :goto_3

    .line 21
    :cond_4
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v2, "Chunk has ended twice during central directory. This should not be possible with chunk sizes of 50MB."

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 22
    invoke-direct {v0, v2, v3}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :catchall_0
    move-exception v0

    .line 23
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    throw v0

    .line 24
    :cond_5
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v3, v11, [Ljava/lang/Object;

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 25
    iget v2, v2, Lcom/google/android/play/core/assetpacks/zzbp;->zza:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v12

    const-string v2, "Slice checkpoint file corrupt. Unexpected FileExtractionStatus %s."

    .line 27
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v0, v2, v3}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 28
    :cond_6
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v3, "Resuming zip entry from last chunk during local file header."

    new-array v4, v12, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzce;->zza:I

    iget-wide v4, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzb:J

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v7, Ljava/io/File;

    move-object/from16 v16, v2

    move/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/play/core/assetpacks/zzbh;->zzo(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "checkpoint_ext.dat"

    invoke-direct {v7, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 33
    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v8}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v13, v8

    move-object v8, v2

    goto/16 :goto_4

    .line 34
    :cond_7
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v2, "Checkpoint extension file not found."

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 35
    invoke-direct {v0, v2, v3}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 36
    :cond_8
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v4, v11, [Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 37
    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/zzbp;->zzb:Ljava/lang/String;

    aput-object v5, v4, v12

    const-string v5, "Resuming zip entry from last chunk during file %s."

    .line 38
    invoke-virtual {v3, v5, v4}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Ljava/io/File;

    move-object v4, v2

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 39
    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/zzbp;->zzb:Ljava/lang/String;

    .line 40
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 42
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    .line 43
    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 44
    iget-wide v5, v5, Lcom/google/android/play/core/assetpacks/zzbp;->zzc:J

    .line 45
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 46
    iget-wide v5, v2, Lcom/google/android/play/core/assetpacks/zzbp;->zzd:J

    :goto_1
    const-wide/16 v13, 0x2000

    .line 47
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v2, v13

    iget-object v7, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 48
    invoke-virtual {v8, v7, v12, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lez v7, :cond_9

    iget-object v13, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 49
    invoke-virtual {v4, v13, v12, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_9
    int-to-long v13, v7

    sub-long v13, v5, v13

    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-lez v5, :cond_b

    if-gtz v7, :cond_a

    goto :goto_2

    :cond_a
    move-wide v5, v13

    goto :goto_1

    .line 50
    :cond_b
    :goto_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    .line 51
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    if-eq v7, v2, :cond_e

    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v4, "Chunk has ended while resuming the previous chunks file content."

    new-array v7, v12, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v2, v4, v7}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    iget v7, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v2, v9

    move-wide v4, v5

    move/from16 v19, v7

    move-wide v6, v13

    move-object v13, v8

    move/from16 v8, v19

    .line 54
    :try_start_6
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/zzen;->zzg(Ljava/lang/String;JJI)V

    :goto_3
    move-object/from16 v8, v16

    goto :goto_4

    :cond_c
    move-object v13, v8

    .line 55
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v2, "Partial file specified in checkpoint does not exist. Corrupt directory."

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 56
    invoke-direct {v0, v2, v3}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d
    move-object v13, v8

    .line 57
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v3, "Trying to resume with chunk number %s when previously processed chunk was number %s."

    new-array v5, v10, [Ljava/lang/Object;

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v12

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzbp;

    .line 59
    iget v2, v2, Lcom/google/android/play/core/assetpacks/zzbp;->zze:I

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v11

    .line 61
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v0, v2, v3}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_e
    move-object v13, v8

    move-object v8, v13

    :goto_4
    if-eqz v8, :cond_19

    .line 62
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzbw;

    .line 63
    invoke-direct {v2, v8}, Lcom/google/android/play/core/assetpacks/zzbw;-><init>(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/zzcf;->zzb(Lcom/google/android/play/core/assetpacks/zzce;)Ljava/io/File;

    move-result-object v3

    .line 65
    :cond_f
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/zzbw;->zzb()Lcom/google/android/play/core/assetpacks/zzet;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 66
    iget-boolean v5, v5, Lcom/google/android/play/core/assetpacks/zzbq;->zzd:Z

    if-nez v5, :cond_12

    .line 67
    iget-boolean v5, v2, Lcom/google/android/play/core/assetpacks/zzbw;->zze:Z

    if-nez v5, :cond_12

    .line 68
    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/zzet;->zzh()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 69
    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/zzet;->zzg()Z

    move-result v5

    if-nez v5, :cond_11

    move-object v5, v4

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 70
    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    .line 71
    invoke-virtual {v9, v5}, Lcom/google/android/play/core/assetpacks/zzen;->zzj([B)V

    new-instance v5, Ljava/io/File;

    move-object v6, v4

    check-cast v6, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 72
    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/zzbq;->zza:Ljava/lang/String;

    .line 73
    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/io/FileOutputStream;

    .line 75
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v5, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 76
    invoke-virtual {v2, v5, v12, v15}, Lcom/google/android/play/core/assetpacks/zzbw;->read([BII)I

    move-result v5

    :goto_5
    if-lez v5, :cond_10

    iget-object v7, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 77
    invoke-virtual {v6, v7, v12, v5}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v5, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 78
    invoke-virtual {v2, v5, v12, v15}, Lcom/google/android/play/core/assetpacks/zzbw;->read([BII)I

    move-result v5

    goto :goto_5

    .line 79
    :cond_10
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    .line 80
    :cond_11
    move-object v5, v4

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 81
    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    .line 82
    invoke-virtual {v9, v5, v2}, Lcom/google/android/play/core/assetpacks/zzen;->zzk([BLjava/io/InputStream;)V

    .line 83
    :cond_12
    :goto_6
    iget-boolean v5, v2, Lcom/google/android/play/core/assetpacks/zzbw;->zzd:Z

    if-nez v5, :cond_13

    .line 84
    iget-boolean v5, v2, Lcom/google/android/play/core/assetpacks/zzbw;->zze:Z

    if-eqz v5, :cond_f

    :cond_13
    iget-boolean v3, v2, Lcom/google/android/play/core/assetpacks/zzbw;->zze:Z

    if-eqz v3, :cond_14

    .line 85
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v5, "Writing central directory metadata."

    new-array v6, v12, [Ljava/lang/Object;

    .line 86
    invoke-virtual {v3, v5, v6}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v4

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 87
    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    .line 88
    invoke-virtual {v9, v3, v8}, Lcom/google/android/play/core/assetpacks/zzen;->zzk([BLjava/io/InputStream;)V

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/zzce;->zza()Z

    move-result v3

    if-nez v3, :cond_19

    move-object v3, v4

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 89
    iget-boolean v3, v3, Lcom/google/android/play/core/assetpacks/zzbq;->zzd:Z

    if-eqz v3, :cond_15

    .line 90
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v3, "Writing slice checkpoint for partial local file header."

    new-array v5, v12, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v2, v3, v5}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 92
    iget-object v2, v4, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    .line 93
    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 94
    invoke-virtual {v9, v2, v3}, Lcom/google/android/play/core/assetpacks/zzen;->zzh([BI)V

    goto :goto_8

    .line 95
    :cond_15
    iget-boolean v3, v2, Lcom/google/android/play/core/assetpacks/zzbw;->zze:Z

    if-eqz v3, :cond_16

    .line 96
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v3, "Writing slice checkpoint for central directory."

    new-array v4, v12, [Ljava/lang/Object;

    .line 97
    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v2, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 98
    invoke-virtual {v9, v2}, Lcom/google/android/play/core/assetpacks/zzen;->zzf(I)V

    goto :goto_8

    :cond_16
    move-object v3, v4

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 99
    iget v3, v3, Lcom/google/android/play/core/assetpacks/zzbq;->zzc:I

    if-nez v3, :cond_18

    .line 100
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v5, "Writing slice checkpoint for partial file."

    new-array v6, v12, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v3, v5, v6}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Ljava/io/File;

    .line 102
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/zzcf;->zzb(Lcom/google/android/play/core/assetpacks/zzce;)Ljava/io/File;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 103
    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/zzbq;->zza:Ljava/lang/String;

    .line 104
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzbq;

    .line 105
    iget-wide v4, v4, Lcom/google/android/play/core/assetpacks/zzbq;->zzb:J

    .line 106
    iget-wide v6, v2, Lcom/google/android/play/core/assetpacks/zzbw;->zzc:J

    sub-long/2addr v4, v6

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_17

    goto :goto_7

    .line 108
    :cond_17
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v2, "Partial file is of unexpected size."

    .line 109
    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_18
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v4, "Writing slice checkpoint for partial unextractable file."

    new-array v5, v12, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v3, v4, v5}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    invoke-virtual {v9}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 114
    :goto_7
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-wide v6, v2, Lcom/google/android/play/core/assetpacks/zzbw;->zzc:J

    .line 116
    iget v8, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    move-object v2, v9

    .line 117
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/zzen;->zzg(Ljava/lang/String;JJI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    .line 118
    :cond_19
    :goto_8
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/zzce;->zza()Z

    move-result v2

    if-eqz v2, :cond_1a

    :try_start_8
    iget v2, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 119
    invoke-virtual {v9, v2}, Lcom/google/android/play/core/assetpacks/zzen;->zzi(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 120
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v3, v11, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "Writing extraction finished checkpoint failed with %s."

    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v3, "Writing extraction finished checkpoint failed."

    iget v1, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 122
    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    .line 123
    :cond_1a
    :goto_9
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v10

    iget v4, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "Extraction finished for chunk %s of slice %s of pack %s of session %s."

    .line 125
    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 126
    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzy;

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    iget v6, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 127
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/zzy;->zzg(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_9
    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzj:Ljava/io/InputStream;

    .line 128
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_a

    .line 129
    :catch_1
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget v3, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v12

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    aput-object v3, v4, v11

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v10

    const-string v3, "Could not close file for chunk %s of slice %s of pack %s."

    .line 131
    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/core/appupdate/zzy;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    :goto_a
    iget v2, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzi:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zze:Lcom/google/android/play/core/internal/zzco;

    .line 133
    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-wide v9, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzh:J

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzf:Lcom/google/android/play/core/assetpacks/zzco;

    .line 134
    monitor-enter v3

    .line 135
    :try_start_a
    iget v7, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    int-to-double v7, v7

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v11

    iget v11, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzg:I

    int-to-double v11, v11

    div-double v11, v7, v11

    iget-object v7, v3, Lcom/google/android/play/core/assetpacks/zzco;->zza:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v3

    const/4 v13, 0x1

    .line 136
    iget-object v14, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzc:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzcf;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzeb;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-wide v7, v9

    .line 138
    invoke-static/range {v4 .. v15}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zzb(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v0

    .line 139
    iget-object v1, v2, Lcom/google/android/play/core/assetpacks/zzbb;->zzk:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/tasks/zzi;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/tasks/zzi;-><init>(Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_3
    move-exception v0

    .line 140
    monitor-exit v3

    throw v0

    :cond_1b
    return-void

    :catchall_4
    move-exception v0

    move-object v13, v8

    .line 141
    :goto_b
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    .line 142
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v3, v11, [Ljava/lang/Object;

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "IOException during extraction %s."

    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v10

    iget v4, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "Error extracting chunk %s of slice %s of pack %s of session %s."

    .line 145
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2
.end method

.method public final zzb(Lcom/google/android/play/core/assetpacks/zzce;)Ljava/io/File;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object p0, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzce;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzce;->zzb:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzp(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p0
.end method
