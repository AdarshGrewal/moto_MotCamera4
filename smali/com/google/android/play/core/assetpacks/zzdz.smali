.class public final Lcom/google/android/play/core/assetpacks/zzdz;
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

.field public final zzf:Lcom/google/android/play/core/common/zza;

.field public final zzg:Lcom/google/android/play/core/assetpacks/zzeb;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/common/zza;Lcom/google/android/play/core/assetpacks/zzeb;)V
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
            "Lcom/google/android/play/core/common/zza;",
            "Lcom/google/android/play/core/assetpacks/zzeb;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzb:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzd:Lcom/google/android/play/core/internal/zzco;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzf:Lcom/google/android/play/core/common/zza;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzdw;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzj(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzK(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    const-string v2, "_slices"

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "_metadata"

    invoke-direct {v6, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 6
    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    new-instance v5, Ljava/io/File;

    .line 10
    invoke-virtual {v0, v1, v4, v7, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    const-string v1, "merge.tmp"

    .line 11
    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 12
    invoke-virtual {v0, v1, v4, v7, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzf:Lcom/google/android/play/core/common/zza;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/play/core/common/zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzc:Ljava/lang/String;

    .line 17
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/zzeb;->zzb(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 18
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/tasks/zza;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/tasks/zza;-><init>(Lcom/google/android/play/core/assetpacks/zzdz;Lcom/google/android/play/core/assetpacks/zzdw;)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 21
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "Could not write asset pack version tag for pack %s: %s"

    .line 22
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 23
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzdx;

    invoke-direct {v2, v1}, Lcom/google/android/play/core/assetpacks/zzdx;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 25
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzcv;

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/play/core/assetpacks/zzcv;-><init>(Lcom/google/android/play/core/assetpacks/zzde;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzco;->zzc(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzb:Lcom/google/android/play/core/internal/zzco;

    .line 28
    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzy;

    iget v0, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzy;->zzh(ILjava/lang/String;)V

    return-void

    .line 29
    :cond_1
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    const-string v0, "Cannot move metadata files to final location."

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 31
    :cond_2
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    const-string v0, "Cannot move merged pack files to final location."

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 33
    :cond_3
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Cannot find pack files to move for pack %s."

    .line 34
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
