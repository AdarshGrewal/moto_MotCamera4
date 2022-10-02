.class public final synthetic Lcom/google/android/play/core/assetpacks/zzcr;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/zzdd;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzde;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;II)V
    .locals 1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzcr;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zzb:I

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzcr;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zzb:I

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/play/core/assetpacks/zzde;->zzq(I)Lcom/google/android/play/core/assetpacks/zzdb;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/zzbg;->zzd(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3
    iget-object p0, v0, Lcom/google/android/play/core/assetpacks/zzde;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v6, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v7, v4, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    .line 4
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzE(Ljava/lang/String;IJ)Z

    iget-object p0, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v4, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    if-eq v4, v2, :cond_0

    const/4 v2, 0x6

    if-ne v4, v2, :cond_2

    :cond_0
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzde;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    .line 5
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzQ(Ljava/io/File;)Z

    :cond_2
    :goto_0
    return-object v1

    .line 7
    :cond_3
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Could not safely delete session %d because it is not in a terminal state."

    .line 9
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzcr;->zzb:I

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/play/core/assetpacks/zzde;->zzq(I)Lcom/google/android/play/core/assetpacks/zzdb;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iput v2, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
