.class public final Lcom/google/android/play/core/assetpacks/zzer;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final zza:Lcom/google/android/play/core/appupdate/zzy;


# instance fields
.field public final zzb:Lcom/google/android/play/core/assetpacks/zzbh;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "VerifySliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzer;->zza:Lcom/google/android/play/core/appupdate/zzy;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzer;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzeq;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzer;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzb:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzp(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzer;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzb:J

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/zzbh;->zzo(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/play/core/assetpacks/zzep;->zza(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzdq;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzd:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/google/android/play/core/assetpacks/zzer;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Verification of slice %s of pack %s successful."

    .line 9
    invoke-virtual {v1, v5, v4}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzer;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object p0, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    iget v8, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zza:I

    iget-wide v9, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzb:J

    iget-object v11, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    .line 11
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/play/core/assetpacks/zzbh;->zzq(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 14
    :cond_0
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Failed to move slice %s after verification."

    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 16
    :cond_2
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Verification failed for slice %s."

    .line 17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Could not digest file during verification for slice %s."

    .line 18
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :catch_1
    move-exception p0

    .line 19
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    const-string v1, "SHA256 algorithm not supported."

    .line 20
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    .line 21
    :cond_3
    :try_start_2
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Cannot find metadata files for slice %s."

    .line 22
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p0

    .line 23
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Could not reconstruct slice archive during verification for slice %s."

    .line 24
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    .line 25
    :cond_4
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzeq;->zzc:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Cannot find unverified files for slice %s."

    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
