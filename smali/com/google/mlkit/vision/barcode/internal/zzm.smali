.class public final Lcom/google/mlkit/vision/barcode/internal/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzj;


# instance fields
.field public zza:Z

.field public zzb:Z

.field public zzc:Z

.field public final zzd:Landroid/content/Context;

.field public final zze:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

.field public zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    return-void
.end method

.method public static zzd(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.google.mlkit.dynamite.barcode"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzc()Z

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Z

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzc(ILandroid/os/Parcel;)V

    .line 6
    iput-boolean v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to init barcode scanner."

    invoke-direct {p1, v0, v3, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget v7, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    .line 9
    iget v6, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/16 p0, 0x23

    const/4 v2, 0x0

    if-eq v6, p0, :cond_7

    .line 10
    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznl;

    .line 11
    iget v8, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    .line 12
    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    .line 13
    invoke-static {v5}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v9

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznl;-><init>(IIIIJ)V

    .line 15
    sget-object v5, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 16
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    const/16 v6, 0x11

    const/4 v7, 0x3

    if-eq v5, v6, :cond_4

    if-eq v5, p0, :cond_3

    const p0, 0x32315659

    if-ne v5, p0, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    .line 19
    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/16 v0, 0x25

    const-string v1, "Unsupported image format: "

    .line 20
    invoke-static {v0, v1, p1}, Landroidx/cardview/R$style$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v7}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 21
    :cond_3
    new-instance p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 22
    invoke-direct {p0, v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_4
    :goto_1
    iget-object p0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 26
    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    .line 27
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object p1

    .line 28
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 29
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x0

    .line 30
    invoke-virtual {v12, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    invoke-virtual {v0, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    .line 32
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    new-instance p0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;

    new-instance v1, Lcom/google/mlkit/vision/barcode/Barcode;

    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzl;

    .line 37
    invoke-direct {v2, v0}, Lcom/google/mlkit/vision/barcode/internal/zzl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;)V

    invoke-direct {v1, v2}, Lcom/google/mlkit/vision/barcode/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzk;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object p0

    :catch_1
    move-exception p0

    .line 38
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to run barcode scanner."

    invoke-direct {p1, v0, v3, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    .line 39
    :cond_6
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    .line 40
    :cond_7
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzc(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecoupledBarcodeScanner"

    const-string v2, "Failed to release barcode scanner."

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Z

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xd

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.mlkit.dynamite.barcode"

    const-string v3, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator"

    .line 3
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thick barcode scanner."

    invoke-direct {v0, v1, v2, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to load the bundled barcode module."

    invoke-direct {v0, v1, v2, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    .line 7
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.vision.barcode"

    const-string v4, "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator"

    .line 8
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-static {v0, v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)V

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb:Z

    return p0

    :catch_2
    move-exception v0

    .line 11
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzC:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-static {p0, v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)V

    .line 13
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thin barcode scanner."

    invoke-direct {p0, v1, v2, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0

    .line 14
    :catch_3
    iget-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzc:Z

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    const-string v2, "barcode"

    .line 16
    invoke-static {v0, v2}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzc:Z

    .line 17
    :cond_2
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-static {p0, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)V

    .line 19
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const/16 v0, 0xe

    const-string v1, "Waiting for the barcode module to be downloaded. Please wait."

    invoke-direct {p0, v1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    .line 3
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 4
    instance-of p3, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    if-eqz p3, :cond_1

    .line 5
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    .line 6
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd:Landroid/content/Context;

    .line 8
    new-instance p3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 9
    invoke-direct {p3, p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 10
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zze:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 11
    iget p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    .line 12
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;-><init>(I)V

    .line 13
    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    move-result-object p0

    return-object p0
.end method
