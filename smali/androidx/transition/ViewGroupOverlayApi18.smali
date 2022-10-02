.class public Landroidx/transition/ViewGroupOverlayApi18;
.super Ljava/lang/Object;
.source "ViewGroupOverlayApi18.java"


# instance fields
.field public final synthetic $r8$classId:I

.field public mViewGroupOverlay:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->$r8$classId:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/tasks/zzb;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzb;-><init>()V

    iput-object p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/transition/ViewGroupOverlayApi18;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/transition/ViewGroupOverlayApi18;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzb;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Lcom/google/android/gms/tasks/zzw;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/Image;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/transition/ViewGroupOverlayApi18;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzh()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzd()I

    move-result v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zza:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc(I)I

    move-result v1

    iget-object v2, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzd()I

    move-result v2

    if-lt v2, v1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc(I)I

    move-result v0

    iget-object v1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    :goto_0
    iget-object v2, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzd()I

    move-result v2

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    .line 10
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V

    move-object v1, v3

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    .line 12
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V

    .line 13
    :goto_1
    iget-object p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget p1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc:I

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zza:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc(I)I

    move-result p1

    iget-object v1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzd()I

    move-result v1

    if-ge v1, p1, :cond_4

    iget-object p1, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    .line 20
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V

    move-object v0, v1

    goto :goto_1

    .line 21
    :cond_4
    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_5
    :goto_2
    iget-object p0, p0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_6
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    if-eqz v0, :cond_7

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    .line 28
    invoke-virtual {p0, v0}, Landroidx/transition/ViewGroupOverlayApi18;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    .line 30
    invoke-virtual {p0, p1}, Landroidx/transition/ViewGroupOverlayApi18;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V

    return-void

    .line 31
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x31

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Has a new type of ByteString been created? Found "

    invoke-static {v1, v0, p1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
