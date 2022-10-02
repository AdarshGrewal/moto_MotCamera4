.class public final Lcom/google/android/play/core/assetpacks/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Lcom/google/android/play/core/assetpacks/zzdo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzb:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field public final zzc:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzco;",
            ">;"
        }
    .end annotation
.end field

.field public final zzd:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final zze:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzed;",
            ">;"
        }
    .end annotation
.end field

.field public final zzf:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final zzg:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzeb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V
    .locals 1

    iput p8, p0, Lcom/google/android/play/core/assetpacks/zzdp;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p8, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzc:Lcom/google/android/play/core/internal/zzcs;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzd:Lcom/google/android/play/core/internal/zzcs;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zze:Lcom/google/android/play/core/internal/zzcs;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzf:Lcom/google/android/play/core/internal/zzcs;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzg:Lcom/google/android/play/core/internal/zzcs;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzc:Lcom/google/android/play/core/internal/zzcs;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzd:Lcom/google/android/play/core/internal/zzcs;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zze:Lcom/google/android/play/core/internal/zzcs;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzf:Lcom/google/android/play/core/internal/zzcs;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzg:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzdp;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzd:Lcom/google/android/play/core/internal/zzcs;

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzu;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzu;->zzb()Landroid/content/Context;

    move-result-object v8

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zze:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzf:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v4}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v10

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzg:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 2
    new-instance v12, Lcom/google/android/play/core/assetpacks/zzdo;

    move-object v6, v1

    check-cast v6, Lcom/google/android/play/core/assetpacks/zzbb;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzco;

    move-object v9, v3

    check-cast v9, Lcom/google/android/play/core/assetpacks/zzed;

    move-object v11, p0

    check-cast v11, Lcom/google/android/play/core/assetpacks/zzeb;

    const/4 p0, 0x0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    .line 3
    invoke-virtual {v8, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v8, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    move-object v5, p0

    :goto_0
    move-object v4, v12

    .line 5
    invoke-direct/range {v4 .. v11}, Lcom/google/android/play/core/assetpacks/zzdo;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/zzco;Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzed;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)V

    return-object v12

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v1}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzd:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v2}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zze:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzf:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/google/android/play/core/common/zza;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdp;->zzg:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object p0

    new-instance v10, Lcom/google/android/play/core/assetpacks/zzdz;

    .line 7
    move-object v3, v0

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzbh;

    move-object v5, v1

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzde;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzco;

    move-object v9, p0

    check-cast v9, Lcom/google/android/play/core/assetpacks/zzeb;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/google/android/play/core/assetpacks/zzdz;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/common/zza;Lcom/google/android/play/core/assetpacks/zzeb;)V

    return-object v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
