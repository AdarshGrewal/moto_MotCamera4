.class public final Lcom/google/android/play/core/assetpacks/zzbp;
.super Lcom/google/android/play/core/assetpacks/zzem;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:J

.field public final zzd:J

.field public final zze:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzem;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zza:I

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzc:J

    iput-wide p5, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzd:J

    iput p7, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zze:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/assetpacks/zzem;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/play/core/assetpacks/zzem;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zza:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzem;->zza()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzb:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzem;->zze()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzem;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzc:J

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzem;->zzc()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzd:J

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzem;->zzd()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zze:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzem;->zzb()I

    move-result p1

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzb:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzc:J

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzd:J

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/16 v2, 0x20

    ushr-long v7, v3, v2

    xor-long/2addr v3, v7

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zze:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zza:I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzb:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzc:J

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzd:J

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zze:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit16 v6, v6, 0x9d

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "SliceCheckpoint{fileExtractionStatus="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", filePath="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileOffset="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", remainingBytes="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", previousChunk="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zza:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zze:I

    return p0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzc:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzd:J

    return-wide v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbp;->zzb:Ljava/lang/String;

    return-object p0
.end method
