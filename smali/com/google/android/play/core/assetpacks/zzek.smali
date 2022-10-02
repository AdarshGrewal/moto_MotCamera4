.class public final Lcom/google/android/play/core/assetpacks/zzek;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zza:Lcom/google/android/play/core/assetpacks/zzbh;

.field public final zzb:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;"
        }
    .end annotation
.end field

.field public final zzc:Lcom/google/android/play/core/assetpacks/zzde;

.field public final zzd:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final zze:Lcom/google/android/play/core/assetpacks/zzco;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/zzbh;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/zzde;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/zzco;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzb:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzd:Lcom/google/android/play/core/internal/zzco;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzek;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzei;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzei;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzb:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    .line 4
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 8
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzk;-><init>(Lcom/google/android/play/core/assetpacks/zzek;Lcom/google/android/play/core/assetpacks/zzei;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzb:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    .line 10
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzcv;

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/zzcv;-><init>(Lcom/google/android/play/core/assetpacks/zzde;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzco;->zzc(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzb:Lcom/google/android/play/core/internal/zzco;

    .line 13
    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzy;

    iget v0, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzy;->zzh(ILjava/lang/String;)V

    return-void

    .line 14
    :cond_0
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v3

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Cannot promote pack %s from %s to %s"

    .line 16
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Cannot find pack files to promote for pack %s at %s"

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
