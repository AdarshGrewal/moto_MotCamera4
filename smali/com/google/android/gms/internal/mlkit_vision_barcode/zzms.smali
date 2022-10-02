.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[B

.field public final zze:[Landroid/graphics/Point;

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzml;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zza:I

    const v2, 0x40001

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzb:Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzc:Ljava/lang/String;

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzd:[B

    .line 8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zze:[Landroid/graphics/Point;

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzf:I

    const v2, 0x40006

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

    .line 13
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    .line 14
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;

    .line 15
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;

    .line 16
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

    .line 18
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

    .line 19
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

    .line 20
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xf

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;

    .line 21
    invoke-static {p1, v1, p0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    return-void
.end method
