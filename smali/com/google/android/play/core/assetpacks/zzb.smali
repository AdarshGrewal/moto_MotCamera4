.class public final Lcom/google/android/play/core/assetpacks/zzb;
.super Lcom/google/android/play/core/internal/zzx;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zza:Landroid/app/NotificationManager;

.field public final zzb:Lcom/google/android/play/core/appupdate/zzy;

.field public final zzc:Landroid/content/Context;

.field public final zzd:Lcom/google/android/play/core/assetpacks/zzbh;

.field public final zze:Lcom/google/android/play/core/assetpacks/zzl;

.field public final zzf:Lcom/google/android/play/core/assetpacks/zzci;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/assetpacks/zzl;Lcom/google/android/play/core/assetpacks/zzci;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzx;-><init>()V

    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "AssetPackExtractionService"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzd:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzb;->zze:Lcom/google/android/play/core/assetpacks/zzl;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    const-string p2, "notification"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zza:Landroid/app/NotificationManager;

    return-void
.end method
