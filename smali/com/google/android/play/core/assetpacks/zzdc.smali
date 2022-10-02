.class public final Lcom/google/android/play/core/assetpacks/zzdc;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:J

.field public final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/play/core/assetpacks/zzcz;",
            ">;"
        }
    .end annotation
.end field

.field public final zze:I

.field public final zzf:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/assetpacks/zzcz;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdc;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/play/core/assetpacks/zzdc;->zzc:J

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzdc;->zzd:Ljava/util/List;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/zzdc;->zze:I

    iput p7, p0, Lcom/google/android/play/core/assetpacks/zzdc;->zzf:I

    return-void
.end method
