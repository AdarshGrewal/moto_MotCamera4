.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

.field public final zzb:Ljava/lang/Integer;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzin;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/FakeDrag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    .line 3
    iget-object v0, p1, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;->zzb:Ljava/lang/Integer;

    .line 5
    iget-object p1, p1, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzin;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzin;

    return-void
.end method
