.class public final Lcom/google/android/play/core/appupdate/zzc;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Lcom/google/android/play/core/appupdate/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;I)V
    .locals 1

    iput p2, p0, Lcom/google/android/play/core/appupdate/zzc;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/android/play/core/internal/zzcs;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/android/play/core/internal/zzcs;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzc;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {p0}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object p0

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbu;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzbu;-><init>(Lcom/google/android/play/core/internal/zzco;)V

    return-object v0

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/android/play/core/internal/zzcs;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzj;

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/zzj;->zzb()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/play/core/appupdate/zzb;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/zzb;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 6
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzer;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzer;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
