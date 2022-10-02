.class public final Lcom/google/android/play/core/assetpacks/zzcl;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final zza:Lcom/google/android/play/core/appupdate/zzy;


# instance fields
.field public final zzb:Lcom/google/android/play/core/assetpacks/zzde;

.field public final zzc:Lcom/google/android/play/core/assetpacks/zzcf;

.field public final zzd:Lcom/google/android/play/core/assetpacks/zzer;

.field public final zze:Lcom/google/android/play/core/assetpacks/zzdu;

.field public final zzf:Lcom/google/android/play/core/assetpacks/zzdz;

.field public final zzg:Lcom/google/android/play/core/assetpacks/zzeg;

.field public final zzh:Lcom/google/android/play/core/assetpacks/zzek;

.field public final zzi:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;"
        }
    .end annotation
.end field

.field public final zzj:Lcom/google/android/play/core/assetpacks/zzdh;

.field public final zzk:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "ExtractorLooper"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzcl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzcf;Lcom/google/android/play/core/assetpacks/zzer;Lcom/google/android/play/core/assetpacks/zzdu;Lcom/google/android/play/core/assetpacks/zzdz;Lcom/google/android/play/core/assetpacks/zzeg;Lcom/google/android/play/core/assetpacks/zzek;Lcom/google/android/play/core/assetpacks/zzdh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/zzde;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/zzcf;",
            "Lcom/google/android/play/core/assetpacks/zzer;",
            "Lcom/google/android/play/core/assetpacks/zzdu;",
            "Lcom/google/android/play/core/assetpacks/zzdz;",
            "Lcom/google/android/play/core/assetpacks/zzeg;",
            "Lcom/google/android/play/core/assetpacks/zzek;",
            "Lcom/google/android/play/core/assetpacks/zzdh;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzi:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzc:Lcom/google/android/play/core/assetpacks/zzcf;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzd:Lcom/google/android/play/core/assetpacks/zzer;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zze:Lcom/google/android/play/core/assetpacks/zzdu;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzf:Lcom/google/android/play/core/assetpacks/zzdz;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzg:Lcom/google/android/play/core/assetpacks/zzeg;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzh:Lcom/google/android/play/core/assetpacks/zzek;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzj:Lcom/google/android/play/core/assetpacks/zzdh;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Exception;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    .line 2
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzcr;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/play/core/assetpacks/zzcr;-><init>(Lcom/google/android/play/core/assetpacks/zzde;II)V

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    .line 4
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzcr;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/zzcr;-><init>(Lcom/google/android/play/core/assetpacks/zzde;II)V

    invoke-virtual {p0, v2}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/zzck; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzcl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array p1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Error during error handling: %s"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
