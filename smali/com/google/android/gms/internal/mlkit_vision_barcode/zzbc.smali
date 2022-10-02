.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;

    .line 1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    .line 3
    check-cast v1, Ljava/util/ListIterator;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;

    .line 5
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;->zzb:I

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;->zzb:I

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    .line 2
    check-cast p0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final nextIndex()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    .line 2
    check-cast p0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    .line 2
    check-cast p0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    .line 2
    check-cast p0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    .line 2
    check-cast p0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
