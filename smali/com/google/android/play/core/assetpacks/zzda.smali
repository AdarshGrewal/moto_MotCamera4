.class public final Lcom/google/android/play/core/assetpacks/zzda;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:J

.field public final zzc:Ljava/lang/String;

.field public zzd:I

.field public final zze:J

.field public final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/play/core/assetpacks/zzdc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIJ",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/assetpacks/zzdc;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iput p4, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    iput-wide p5, p0, Lcom/google/android/play/core/assetpacks/zzda;->zze:J

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzf:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/zzda;->zzc:Ljava/lang/String;

    return-void
.end method
