.class public final synthetic Lcom/google/android/play/core/assetpacks/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/zzdd;


# instance fields
.field public zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;

.field public zzc:I

.field public zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Ljava/lang/String;IJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zzb:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zzd:J

    return-void
.end method


# virtual methods
.method public zza()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzcv;->zzd:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 1
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 2
    new-instance v7, Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {v7, v0, v5}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Lcom/google/android/play/core/assetpacks/zzde;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 3
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzdb;

    if-eqz v5, :cond_0

    iget-object v7, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v7, v7, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v7}, Lcom/google/android/play/core/assetpacks/zzbg;->zzd(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    sget-object v7, Lcom/google/android/play/core/assetpacks/zzde;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v1, p0, v6

    const-string v8, "Could not find pack %s while trying to complete it"

    .line 4
    invoke-static {v8, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v6}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    iget-object p0, v0, Lcom/google/android/play/core/assetpacks/zzde;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 5
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzE(Ljava/lang/String;IJ)Z

    .line 6
    iget-object p0, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    const/4 p0, 0x0

    return-object p0
.end method
